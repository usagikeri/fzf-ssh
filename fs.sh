function fs() {
        local addr
        local user
        addr=`cat ~/.ssh/known_hosts | awk '{print $1}' | sort |fzf`
        if [[ $addr == "" ]];then
                exit
        elif [[ $1 == "" ]];then
                /bin/echo -n "User Name >> "
                read user
                echo "ssh $user@$addr"
                ssh $user@$addr
        else
                echo "ssh $1@$addr"
                ssh $1@$addr
        fi
}

fs
