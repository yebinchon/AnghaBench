
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HIGHBIT_SET (char const) ;

__attribute__((used)) static unsigned
esc_enc_len(const char *src, unsigned srclen)
{
 const char *end = src + srclen;
 int len = 0;

 while (src < end)
 {
  if (*src == '\0' || IS_HIGHBIT_SET(*src))
   len += 4;
  else if (*src == '\\')
   len += 2;
  else
   len++;

  src++;
 }

 return len;
}
