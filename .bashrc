#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

echo " note generator indak manishya"
echo " bash reminder setaknde"

gitbranch() {
    git branch 2>/dev/null | grep '^*' | colrm 1 2 | sed -e 's/^/🌲 /'
}
exitstatus() {
    if [[ $? == 0 ]]; then
        echo '🤓'
    else
        echo '💩'
    fi
}

# code injected by Rocket prompt
export PS1=' $(battery)  $(disk)\n 📅 \d - 🕡 \@ \n 👨‍ \u @ 🛰️ \h : 📂 \W  )  $(gitbranch)  \n 👉 '

# User specific environment

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

export PATH="$PATH:$HOME/.local/bin"
