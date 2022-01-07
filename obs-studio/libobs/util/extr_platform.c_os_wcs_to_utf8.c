
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 size_t wchar_to_utf8 (int const*,size_t,char*,size_t,int ) ;
 size_t wcslen (int const*) ;

size_t os_wcs_to_utf8(const wchar_t *str, size_t len, char *dst,
        size_t dst_size)
{
 size_t in_len;
 size_t out_len;

 if (!str)
  return 0;

 in_len = (len != 0) ? len : wcslen(str);
 out_len = dst ? (dst_size - 1) : wchar_to_utf8(str, in_len, ((void*)0), 0, 0);

 if (dst) {
  if (!dst_size)
   return 0;

  if (out_len)
   out_len =
    wchar_to_utf8(str, in_len, dst, out_len + 1, 0);

  dst[out_len] = 0;
 }

 return out_len;
}
