
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 char* _base64 ;

__attribute__((used)) static int
pg_base64_encode(const uint8 *src, unsigned len, uint8 *dst)
{
 uint8 *p,
      *lend = dst + 76;
 const uint8 *s,
      *end = src + len;
 int pos = 2;
 unsigned long buf = 0;

 s = src;
 p = dst;

 while (s < end)
 {
  buf |= *s << (pos << 3);
  pos--;
  s++;




  if (pos < 0)
  {
   *p++ = _base64[(buf >> 18) & 0x3f];
   *p++ = _base64[(buf >> 12) & 0x3f];
   *p++ = _base64[(buf >> 6) & 0x3f];
   *p++ = _base64[buf & 0x3f];

   pos = 2;
   buf = 0;
  }
  if (p >= lend)
  {
   *p++ = '\n';
   lend = p + 76;
  }
 }
 if (pos != 2)
 {
  *p++ = _base64[(buf >> 18) & 0x3f];
  *p++ = _base64[(buf >> 12) & 0x3f];
  *p++ = (pos == 0) ? _base64[(buf >> 6) & 0x3f] : '=';
  *p++ = '=';
 }

 return p - dst;
}
