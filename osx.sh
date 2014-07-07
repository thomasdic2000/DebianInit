# Given Mac OS requries a lot of manual configuration, this file acts more like a check list

# Install XCode and its command line tool from the Apple Developer website

# Install brew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# Install some utilitis
brew install python wget curl tmux vim git

# Scientific Development Environment
pip install numpy scipy matplotlib

# oh-my-zsh and z
curl -L http://install.ohmyz.sh | sh
pushd~
git clone https://github.com/rupa/z
popd

# .dotfiles and deploy
pushd ~
git clone --recursive https://github.com/.dotfiles
rm -rf .zshrc .vim .vimrc .tmux.conf
ln -s .dotfiles/.zshrc .zshrc
ln -s .dotfiles/.vim .vim
ln -s .dotfiles/.vimrc .vimrc
popd

# Other apps
# Skim
wget http://downloads.sourceforge.net/project/skim-app/Skim/Skim-1.4.9/Skim-1.4.9.dmg?r=http%3A%2F%2Fskim-app.sourceforge.net%2F&ts=1404764983&use_mirror=hivelocity
# MacVim
wget https://github.com/b4winckler/macvim/releases/download/snapshot-73/MacVim-snapshot-73-Mavericks.tbz
# Chrome
wget https://dl.google.com/chrome/mac/stable/GGRM/googlechrome.dmg
