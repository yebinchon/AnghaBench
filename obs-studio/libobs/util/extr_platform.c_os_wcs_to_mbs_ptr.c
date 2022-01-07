
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 char* bmalloc (size_t) ;
 size_t os_wcs_to_mbs (int const*,size_t,char*,size_t) ;

size_t os_wcs_to_mbs_ptr(const wchar_t *str, size_t len, char **pstr)
{
 if (str) {
  size_t out_len = os_wcs_to_mbs(str, len, ((void*)0), 0);

  *pstr = bmalloc((out_len + 1) * sizeof(char));
  return os_wcs_to_mbs(str, len, *pstr, out_len + 1);
 } else {
  *pstr = ((void*)0);
  return 0;
 }
}
