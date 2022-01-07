
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;


 size_t strlen (char const*) ;
 size_t utf8_to_wchar (char const*,size_t,scalar_t__*,size_t,int ) ;

size_t os_utf8_to_wcs(const char *str, size_t len, wchar_t *dst,
        size_t dst_size)
{
 size_t in_len;
 size_t out_len;

 if (!str)
  return 0;

 in_len = len ? len : strlen(str);
 out_len = dst ? (dst_size - 1) : utf8_to_wchar(str, in_len, ((void*)0), 0, 0);

 if (dst) {
  if (!dst_size)
   return 0;

  if (out_len)
   out_len =
    utf8_to_wchar(str, in_len, dst, out_len + 1, 0);

  dst[out_len] = 0;
 }

 return out_len;
}
