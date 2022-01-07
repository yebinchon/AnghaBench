
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ astrcmpi (char const*,char*) ;

__attribute__((used)) static bool valid_extension(const char *ext)
{
 if (!ext)
  return 0;
 return astrcmpi(ext, ".bmp") == 0 || astrcmpi(ext, ".tga") == 0 ||
        astrcmpi(ext, ".png") == 0 || astrcmpi(ext, ".jpeg") == 0 ||
        astrcmpi(ext, ".jpg") == 0 || astrcmpi(ext, ".gif") == 0;
}
