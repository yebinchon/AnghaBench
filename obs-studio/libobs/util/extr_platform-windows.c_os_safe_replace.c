
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ GetLastError () ;
 int MOVEFILE_REPLACE_EXISTING ;
 scalar_t__ MoveFileExW (int *,int *,int ) ;
 scalar_t__ ReplaceFileW (int *,int *,int *,int ,int *,int *) ;
 int bfree (int *) ;
 int os_utf8_to_wcs_ptr (char const*,int ,int **) ;

int os_safe_replace(const char *target, const char *from, const char *backup)
{
 wchar_t *wtarget = ((void*)0);
 wchar_t *wfrom = ((void*)0);
 wchar_t *wbackup = ((void*)0);
 int code = -1;

 if (!target || !from)
  return -1;
 if (!os_utf8_to_wcs_ptr(target, 0, &wtarget))
  return -1;
 if (!os_utf8_to_wcs_ptr(from, 0, &wfrom))
  goto fail;
 if (backup && !os_utf8_to_wcs_ptr(backup, 0, &wbackup))
  goto fail;

 if (ReplaceFileW(wtarget, wfrom, wbackup, 0, ((void*)0), ((void*)0))) {
  code = 0;
 } else if (GetLastError() == ERROR_FILE_NOT_FOUND) {
  code = MoveFileExW(wfrom, wtarget, MOVEFILE_REPLACE_EXISTING)
          ? 0
          : -1;
 }

fail:
 bfree(wtarget);
 bfree(wfrom);
 bfree(wbackup);
 return code;
}
