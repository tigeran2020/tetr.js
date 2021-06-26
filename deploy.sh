rm -rf dist/
mkdir -p dist/

# 拷贝除dist以外的目录
shopt -s extglob
cp -rf ./!(dist) dist/

cd dist 

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/tigeran2020/tetr.js.git master:gh-pages
cd -