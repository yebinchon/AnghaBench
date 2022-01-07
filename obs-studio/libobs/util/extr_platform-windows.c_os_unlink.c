
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int DeleteFileW (int *) ;
 int bfree (int *) ;
 int os_utf8_to_wcs_ptr (char const*,int ,int **) ;

int os_unlink(const char *path)
{
 wchar_t *w_path;
 bool success;

 os_utf8_to_wcs_ptr(path, 0, &w_path);
 if (!w_path)
  return -1;

 success = !!DeleteFileW(w_path);
 bfree(w_path);

 return success ? 0 : -1;
}
