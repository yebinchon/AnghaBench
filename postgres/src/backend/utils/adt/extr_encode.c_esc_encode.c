
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char DIG (unsigned char) ;
 scalar_t__ IS_HIGHBIT_SET (unsigned char) ;

__attribute__((used)) static unsigned
esc_encode(const char *src, unsigned srclen, char *dst)
{
 const char *end = src + srclen;
 char *rp = dst;
 int len = 0;

 while (src < end)
 {
  unsigned char c = (unsigned char) *src;

  if (c == '\0' || IS_HIGHBIT_SET(c))
  {
   rp[0] = '\\';
   rp[1] = DIG(c >> 6);
   rp[2] = DIG((c >> 3) & 7);
   rp[3] = DIG(c & 7);
   rp += 4;
   len += 4;
  }
  else if (c == '\\')
  {
   rp[0] = '\\';
   rp[1] = '\\';
   rp += 2;
   len += 2;
  }
  else
  {
   *rp++ = c;
   len++;
  }

  src++;
 }

 return len;
}
