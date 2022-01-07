
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;


 size_t mbstowcs (scalar_t__*,char const*,size_t) ;

size_t os_mbs_to_wcs(const char *str, size_t len, wchar_t *dst, size_t dst_size)
{
 size_t out_len;

 if (!str)
  return 0;

 out_len = dst ? (dst_size - 1) : mbstowcs(((void*)0), str, len);

 if (dst) {
  if (!dst_size)
   return 0;

  if (out_len)
   out_len = mbstowcs(dst, str, out_len + 1);

  dst[out_len] = 0;
 }

 return out_len;
}
