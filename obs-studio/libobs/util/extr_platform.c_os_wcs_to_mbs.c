
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 size_t wcstombs (char*,int const*,size_t) ;

size_t os_wcs_to_mbs(const wchar_t *str, size_t len, char *dst, size_t dst_size)
{
 size_t out_len;

 if (!str)
  return 0;

 out_len = dst ? (dst_size - 1) : wcstombs(((void*)0), str, len);

 if (dst) {
  if (!dst_size)
   return 0;

  if (out_len)
   out_len = wcstombs(dst, str, out_len + 1);

  dst[out_len] = 0;
 }

 return out_len;
}
