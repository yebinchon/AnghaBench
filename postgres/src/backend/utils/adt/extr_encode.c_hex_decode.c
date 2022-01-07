
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int get_hex (int ) ;

unsigned
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
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("invalid hexadecimal data: odd number of digits")));

  v2 = get_hex(*s++);
  *p++ = v1 | v2;
 }

 return p - dst;
}
