index=$(dirname "${0}") #因bash -c后的参数以$0开始而并非$1，所以clone下来的要手动把$0改成$1来使用，本文件仅适用于readme内的运行方式

cd $index

target=$(echo "${0}"| sed 's/$index//')

mkdir icons.iconset 

sips -z 16 16     $target --out icons.iconset/icon_16x16.png

sips -z 32 32     $target --out icons.iconset/icon_16x16@2x.png

sips -z 32 32     $target --out icons.iconset/icon_32x32.png

sips -z 64 64     $target --out icons.iconset/icon_32x32@2x.png

sips -z 64 64     $target --out icons.iconset/icon_64x64.png

sips -z 128 128   $target --out icons.iconset/icon_64x64@2x.png

sips -z 128 128   $target --out icons.iconset/icon_128x128.png

sips -z 256 256   $target --out icons.iconset/icon_128x128@2x.png

sips -z 256 256   $target --out icons.iconset/icon_256x256.png

sips -z 512 512   $target --out icons.iconset/icon_256x256@2x.png

sips -z 512 512   $target --out icons.iconset/icon_512x512.png

sips -z 1024 1024   $target --out icons.iconset/icon_512x512@2x.png

iconutil -c icns icons.iconset -o Icon.icns
