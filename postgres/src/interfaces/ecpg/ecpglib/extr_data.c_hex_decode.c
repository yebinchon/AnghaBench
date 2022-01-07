
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_hex (int ) ;

__attribute__((used)) static unsigned
hex_decode(const char *src, unsigned len, char *dst)
{
 const char *s,
      *srcend;
 char v1,
    v2,
      *p;

 srcend = src + len;
 s = src;
 p = dst;
 while (s < srcend)
 {
  if (*s == ' ' || *s == '\n' || *s == '\t' || *s == '\r')
  {
   s++;
   continue;
  }
  v1 = get_hex(*s++) << 4;
  if (s >= srcend)
   return -1;

  v2 = get_hex(*s++);
  *p++ = v1 | v2;
 }

 return p - dst;
}
