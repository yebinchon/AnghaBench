
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_big5_mblen (unsigned char const*) ;

__attribute__((used)) static int
pg_big5_verifier(const unsigned char *s, int len)
{
 int l,
    mbl;

 l = mbl = pg_big5_mblen(s);

 if (len < l)
  return -1;

 while (--l > 0)
 {
  if (*++s == '\0')
   return -1;
 }

 return mbl;
}
