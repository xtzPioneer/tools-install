#!/bin/bash
#
# author: xtz_pioneer
# email: xtz_pioneer@icloud.com
# slogan: 学的不仅是技术，更是梦想！
#

####################################
# Oh-my-zsh
####################################

# Oh-my-zsh 名称
OH_MY_ZSH_NAME="oh-my-zsh"

# Oh-my-zsh 路径
OH_MY_ZSH_PATH="$HOME/.$OH_MY_ZSH_NAME"

# Oh-my-zsh 自定义插件路径
OH_MY_ZSH_CUSTOM_PLUGINS_PATH="$OH_MY_ZSH_PATH/custom/plugins/"

# 判断 Oh-my-zsh 路径是否存在的函数
is_oh_my_zsh_path() {
    if [ -d $OH_MY_ZSH_PATH ]
    then
    return 0
    else
    return 1
    fi
}

# 安装 Oh-my-zsh 的函数
install_oh_my_zsh() {
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

# 安装 Oh-my-zsh
if ! is_oh_my_zsh_path
then
echo "正在安装 ${OH_MY_ZSH_NAME}..."
install_oh_my_zsh
fi

# 判断 Oh-my-zsh 是否安装成功
if is_oh_my_zsh_path
then
echo "$OH_MY_ZSH_NAME 已安装在:${OH_MY_ZSH_PATH}"
else
echo "${OH_MY_ZSH_NAME} 安装失败。"
exit 1
fi

####################################
# Zsh-syntax-highlighting
####################################

# 自定义插件 Zsh-syntax-highlighting 的名称
OH_MY_ZSH_CUSTOM_PLUGIN_ZSH_SYNTAX_HIGHLIGHTING_NAME="zsh-syntax-highlighting"

# 自定义插件 Zsh-syntax-highlighting 的路径
OH_MY_ZSH_CUSTOM_PLUGIN_ZSH_SYNTAX_HIGHLIGHTING_PATH="$OH_MY_ZSH_CUSTOM_PLUGINS_PATH$OH_MY_ZSH_CUSTOM_PLUGIN_ZSH_SYNTAX_HIGHLIGHTING_NAME"

# 判断 Zsh-syntax-highlighting 路径是否存在的函数
is_zsh_syntax_highlighting_path() {
    if [ -d $OH_MY_ZSH_CUSTOM_PLUGIN_ZSH_SYNTAX_HIGHLIGHTING_PATH ]
    then
    return 0
    else
    return 1
    fi
}

# 安装 Zsh-syntax-highlighting 的函数
install_zsh_syntax_highlighting() {
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$OH_MY_ZSH_CUSTOM_PLUGIN_ZSH_SYNTAX_HIGHLIGHTING_PATH"
}

# 安装 Zsh-syntax-highlighting
if is_oh_my_zsh_path && ! is_zsh_syntax_highlighting_path
then
echo "正在安装 ${OH_MY_ZSH_CUSTOM_PLUGIN_ZSH_SYNTAX_HIGHLIGHTING_NAME}..."
install_zsh_syntax_highlighting
fi

# 判断 Zsh-syntax-highlighting 是否安装成功
if is_zsh_syntax_highlighting_path
then
echo "$OH_MY_ZSH_CUSTOM_PLUGIN_ZSH_SYNTAX_HIGHLIGHTING_NAME 已安装在:${OH_MY_ZSH_CUSTOM_PLUGIN_ZSH_SYNTAX_HIGHLIGHTING_PATH}"
else
echo "${OH_MY_ZSH_CUSTOM_PLUGIN_ZSH_SYNTAX_HIGHLIGHTING_NAME} 安装失败。"
fi

####################################
# Zsh-autosuggestions
####################################

# 自定义插件 Zsh-autosuggestions 的名称
OH_MY_ZSH_CUSTOM_PLUGIN_ZSH_AUTOSUGGESTIONS_NAME="zsh-autosuggestions"

# 自定义插件 Zsh-autosuggestions 的路径
OH_MY_ZSH_CUSTOM_PLUGIN_ZSH_AUTOSUGGESTIONS_PATH="$OH_MY_ZSH_CUSTOM_PLUGINS_PATH$OH_MY_ZSH_CUSTOM_PLUGIN_ZSH_AUTOSUGGESTIONS_NAME"

# 判断 Zsh-autosuggestions 路径是否存在的函数
is_zsh_autosuggestions_path() {
    if [ -d $OH_MY_ZSH_CUSTOM_PLUGIN_ZSH_AUTOSUGGESTIONS_PATH ]
    then
    return 0
    else
    return 1
    fi
}

# 安装 Zsh-autosuggestions 的函数
install_zsh_autosuggestions() {
    git clone https://github.com/zsh-users/zsh-autosuggestions.git "$OH_MY_ZSH_CUSTOM_PLUGIN_ZSH_AUTOSUGGESTIONS_PATH"
}

# 安装 Zsh-autosuggestions
if is_oh_my_zsh_path && ! is_zsh_autosuggestions_path
then
echo "正在安装 ${OH_MY_ZSH_CUSTOM_PLUGIN_ZSH_AUTOSUGGESTIONS_NAME}..."
install_zsh_autosuggestions
fi

# 判断 Zsh-autosuggestions 是否安装成功
if is_zsh_autosuggestions_path
then
echo "$OH_MY_ZSH_CUSTOM_PLUGIN_ZSH_AUTOSUGGESTIONS_NAME 已安装在:${OH_MY_ZSH_CUSTOM_PLUGIN_ZSH_AUTOSUGGESTIONS_PATH}"
else
echo "${OH_MY_ZSH_CUSTOM_PLUGIN_ZSH_AUTOSUGGESTIONS_NAME} 安装失败。"
fi
