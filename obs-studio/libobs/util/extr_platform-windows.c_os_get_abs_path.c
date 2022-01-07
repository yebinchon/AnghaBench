
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int * _wfullpath (int *,int *,int) ;
 size_t os_utf8_to_wcs (char const*,int ,int *,int) ;
 size_t os_wcs_to_utf8 (int *,int ,char*,size_t) ;

size_t os_get_abs_path(const char *path, char *abspath, size_t size)
{
 wchar_t wpath[512];
 wchar_t wabspath[512];
 size_t out_len = 0;
 size_t len;

 if (!abspath)
  return 0;

 len = os_utf8_to_wcs(path, 0, wpath, 512);
 if (!len)
  return 0;

 if (_wfullpath(wabspath, wpath, 512) != ((void*)0))
  out_len = os_wcs_to_utf8(wabspath, 0, abspath, size);
 return out_len;
}
