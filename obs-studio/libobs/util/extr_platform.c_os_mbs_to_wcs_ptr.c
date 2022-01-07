
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int * bmalloc (size_t) ;
 size_t os_mbs_to_wcs (char const*,size_t,int *,size_t) ;

size_t os_mbs_to_wcs_ptr(const char *str, size_t len, wchar_t **pstr)
{
 if (str) {
  size_t out_len = os_mbs_to_wcs(str, len, ((void*)0), 0);

  *pstr = bmalloc((out_len + 1) * sizeof(wchar_t));
  return os_mbs_to_wcs(str, len, *pstr, out_len + 1);
 } else {
  *pstr = ((void*)0);
  return 0;
 }
}
