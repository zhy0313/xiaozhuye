#! /bin/bash
echo '\n\033[35m> 初始化文件... \033[0m'
git checkout view/home/index_index.html
echo '> view/home/index_index.html => clean'

echo '\n\033[35m> git pull... \033[0m'
git pull origin

# echo '\n\033[35m> npm install... \033[0m'
# npm install

echo '\n\033[35m> 打包前端文件... \033[0m'
npm run fe-xiaozhuye

echo '\n\033[35m> 打包后端文件... \033[0m'
npm run compile

echo '\n\033[35m> 重启服务pm2... \033[0m'
pm2 restart xiaozhuye