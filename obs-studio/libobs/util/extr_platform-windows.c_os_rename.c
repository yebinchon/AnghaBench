
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int MOVEFILE_REPLACE_EXISTING ;
 scalar_t__ MoveFileExW (int *,int *,int ) ;
 int bfree (int *) ;
 int os_utf8_to_wcs_ptr (char const*,int ,int **) ;

int os_rename(const char *old_path, const char *new_path)
{
 wchar_t *old_path_utf16 = ((void*)0);
 wchar_t *new_path_utf16 = ((void*)0);
 int code = -1;

 if (!os_utf8_to_wcs_ptr(old_path, 0, &old_path_utf16)) {
  return -1;
 }
 if (!os_utf8_to_wcs_ptr(new_path, 0, &new_path_utf16)) {
  goto error;
 }

 code = MoveFileExW(old_path_utf16, new_path_utf16,
      MOVEFILE_REPLACE_EXISTING)
         ? 0
         : -1;

error:
 bfree(old_path_utf16);
 bfree(new_path_utf16);
 return code;
}
