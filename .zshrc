# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/thouger/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="ys"

alias vz="vi ~/.zshrc"
alias sz="source ~/.zshrc"
alias vi="vim"
alias apt="sudo apt"
alias fn="sudo find / -name"
alias du="du -h"
alias p="python"
alias vt="vi  ~/.tmux.conf"
alias vv="vi ~/.vimrc"
alias vb="vi ~/.vimrc.bundles"
alias f="sudo find . -name \* |xargs grep -r"
alias cscope="cscope -Rbq"

fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

plugins=(git autojump)

source $ZSH/oh-my-zsh.sh

[[ -s /home/thouger/.autojump/etc/profile.d/autojump.sh ]] && source /home/thouger/.autojump/etc/profile.d/autojump.sh

# 解决autojump的cannot set nicencess: Permission denied问题,发生在win10的子系统linux上面
unsetopt BG_NICE
