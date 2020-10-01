ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="robbyrussell"

# Useful plugins for Rails development with Sublime Text
plugins=(git gitfast last-working-dir common-aliases sublime zsh-syntax-highlighting history-substring-search)

# Prevent Homebrew from reporting - https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"
unalias rm # No interactive rm by default (brought by plugins/common-aliases)

# Load rbenv if installed
export PATH="${HOME}/.rbenv/bin:${PATH}"
type -a rbenv > /dev/null && eval "$(rbenv init -)"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
# Same for `./node_modules/.bin` and nodejs
export PATH="./bin:./node_modules/.bin:${PATH}:/usr/local/sbin"

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"

alias rr="bin/rails routes"
alias rc="bin/rails console"
alias rs="bin/rails server"
alias rdm="bin/rails db:migrate"
alias web="webpack-dev-server"

alias zs="subl ~/.zshrc"
alias sz="source ~/.zshrc"

alias \$=''

alias grec="git reset HEAD^"
alias hardpull="git fetch && git reset origin/$(git_current_branch) --hard"



alias dotfiles="cd ~/dotfiles"
alias proj="cd ~/code/yannlegendre"
alias wagon="cd ~/code/yannlegendre/lewagon"

alias pa="cd ~/perangusta"


function demo() {
  touch "$1" && st "$1"
}

function gacp() {
    git add .
    git commit -m "$1"
    git push origin master
}
