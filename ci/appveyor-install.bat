set CACHE=C:\cache
set CYGWIN_MIRROR="http://cygwin.mirror.constant.com"
set CYGWIN_ADDITIONAL_REPO="http://www.dronecode.org.uk/cygwin/"
set CYGWIN_ADDITIONAL_REPO_KEY="http://www.dronecode.org.uk/cygwin/dronecode.gpg"

if _%arch%_ == _x64_ set SETUP=setup-x86_64.exe && set CYGWIN_ROOT=C:\cygwin64
if _%arch%_ == _x86_ set SETUP=setup-x86.exe && set CYGWIN_ROOT=C:\cygwin

if not exist %CACHE% mkdir %CACHE%

echo Updating Cygwin and installing ninja and test prerequisites
%CYGWIN_ROOT%\%SETUP% -qnNdO -R "%CYGWIN_ROOT%" -s "%CYGWIN_MIRROR%" -s "%CYGWIN_ADDITIONAL_REPO%" -K "%CYGWIN_ADDITIONAL_REPO_KEY%" -l "%CACHE%" -g -P "ninja,gcc-objc,gcc-objc++,libglib2.0-devel,zlib-devel,python3-pip"
echo Install done
