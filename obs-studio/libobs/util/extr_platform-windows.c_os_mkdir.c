
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int BOOL ;


 int CreateDirectory (int *,int *) ;
 scalar_t__ ERROR_ALREADY_EXISTS ;
 scalar_t__ GetLastError () ;
 int MKDIR_ERROR ;
 int MKDIR_EXISTS ;
 int MKDIR_SUCCESS ;
 int bfree (int *) ;
 int os_utf8_to_wcs_ptr (char const*,int ,int **) ;

int os_mkdir(const char *path)
{
 wchar_t *path_utf16;
 BOOL success;

 if (!os_utf8_to_wcs_ptr(path, 0, &path_utf16))
  return MKDIR_ERROR;

 success = CreateDirectory(path_utf16, ((void*)0));
 bfree(path_utf16);

 if (!success)
  return (GetLastError() == ERROR_ALREADY_EXISTS) ? MKDIR_EXISTS
        : MKDIR_ERROR;

 return MKDIR_SUCCESS;
}
