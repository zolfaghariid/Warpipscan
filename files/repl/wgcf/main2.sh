#!/bin/sh

red(){
    echo -e "\033[31m\033[01m$1\033[0m"
}

green(){
    echo -e "\033[32m\033[01m$1\033[0m"
}

yellow(){
    echo -e "\033[33m\033[01m$1\033[0m"
}

rm -f wgcf-account.toml wgcf-profile.conf
echo | ./wgcf register
chmod +x wgcf-account.toml

clear
yellow "请选择需要使用的 WARP 账户类型"
echo ""
echo -e " ${GREEN}1.${PLAIN} WARP 免费账户 ${YELLOW}(默认)${PLAIN}"
echo -e " ${GREEN}2.${PLAIN} WARP+"
echo -e " ${GREEN}3.${PLAIN} WARP Teams"
echo ""
read -p "请输入选项 [1-3]: " account_type