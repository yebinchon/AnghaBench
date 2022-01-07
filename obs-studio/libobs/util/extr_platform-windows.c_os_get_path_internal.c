
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int MAX_PATH ;
 int SHGFP_TYPE_CURRENT ;
 int SHGetFolderPathW (int *,int,int *,int ,int *) ;
 scalar_t__ os_wcs_to_utf8 (int *,int ,char*,size_t) ;
 scalar_t__ strcat_s (char*,size_t,char const*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int os_get_path_internal(char *dst, size_t size, const char *name,
    int folder)
{
 wchar_t path_utf16[MAX_PATH];

 SHGetFolderPathW(((void*)0), folder, ((void*)0), SHGFP_TYPE_CURRENT, path_utf16);

 if (os_wcs_to_utf8(path_utf16, 0, dst, size) != 0) {
  if (!name || !*name) {
   return (int)strlen(dst);
  }

  if (strcat_s(dst, size, "\\") == 0) {
   if (strcat_s(dst, size, name) == 0) {
    return (int)strlen(dst);
   }
  }
 }

 return -1;
}
