
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int bfree (int *) ;
 size_t os_mbs_to_wcs_ptr (char const*,size_t,int **) ;
 size_t os_wcs_to_utf8_ptr (int *,size_t,char**) ;

size_t os_mbs_to_utf8_ptr(const char *str, size_t len, char **pstr)
{
 char *dst = ((void*)0);
 size_t out_len = 0;

 if (str) {
  wchar_t *wstr = ((void*)0);
  size_t wlen = os_mbs_to_wcs_ptr(str, len, &wstr);
  out_len = os_wcs_to_utf8_ptr(wstr, wlen, &dst);
  bfree(wstr);
 }

 *pstr = dst;
 return out_len;
}
