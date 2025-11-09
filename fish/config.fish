# Enable syntax highlighting and autosuggestions
set -g fish_color_command green
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection magenta
set -g fish_color_error red

# Fuzzy finder keybinds (requires fzf.fish)
fzf_configure_bindings --history --directory

# Aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Better greeting
set -g fish_greeting "🐠 Welcome back, $(whoami)!  Dive in."

# Path tweaks (if needed)
set -Ux PATH $PATH ~/.local/bin

if status is-interactive
    # Commands to run in interactive sessions can go here
     if test -z "$ZELLIJ"
        zellij attach -c
        exit
     end
end
