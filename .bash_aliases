# ojm
alias hgrep='history | grep'
alias targz='tar -cvfz'
alias untargz='tar -xvfz'
alias phpfix='php-cs-fixer fix . --show-progress estimating --verbose --rules=@PSR2,@PSR1,@Symfony,-phpdoc_annotation_without_dot,-phpdoc_summary,-trailing_comma_in_multiline_array,-pre_increment,-yoda_style'

# SSH
alias ssh_invalid='grep sshd.\*Invalid /var/log/auth.log'
alias ssh_failed='grep sshd.\*Failed /var/log/auth.log'
alias ssh_scanned='grep sshd.*Did /var/log/auth.log'
alias ssh_success='grep sshd.*opened /var/log/auth.log'

# Network
alias network_whereami='curl ipinfo.io; echo'
alias network_monip="curl -s monip.org | iconv -f iso-8859-1 | sed -n 's/.*IP : \([0-9.]*\).*/\1/p'"
alias network_scan='nmap -T4 -sP 192.168.0.0/24' # 192.168.0.0/24
alias network_ipinfo='nmap -A -T4' # IP
alias network_netstat-listen='netstat -lepunt'
alias network_connections='netstat | grep EST'

# Alert
alias alert_helper='history|tail -n1|sed -e "s/^\s*[0-9]\+\s*//" -e "s/;\s*alert$//"'
alias alert='notify-send -i /usr/share/icons/gnome/32x32/apps/gnome-terminal.png "[0] "'

# Functions
fgrep() { sudo find $1 -path "*/cache" -prune -o -path "*/logs" -prune -o -path "*/.svn" -prune -o -path "*~" -prune -o -print0 |sudo xargs -0 grep -si --color=always "$2"; }
alias fgrep_content='sudo find . -path "*/cache" -prune -o -path "*/logs" -prune -o -path "*/.svn" -prune -o -path "*~" -prune -o -print0 |sudo xargs -0 grep -si --color=always '
alias fgrep=fgrep

tree() { find . | sort | sed -e "s/[^-][^\/]*\//  │/g" -e "s/│\([^ ]\)/├──\1/"; }
tred() { find . -type d | sort | sed -e "s/[^-][^\/]*\//  │/g" -e "s/│\([^ ]\)/├──\1/"; }
alias tree=tree
alias tred=tred

# project
alias services_restart="
    sudo service nginx restart;
    sudo service kraken-iv restart;
    sudo service uwsgi restart;"

#alias folder='cd ~/folder/'
