
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_HIGHBIT_SET (unsigned char) ;
 int pg_mule_mblen (unsigned char const*) ;

__attribute__((used)) static int
pg_mule_verifier(const unsigned char *s, int len)
{
 int l,
    mbl;
 unsigned char c;

 l = mbl = pg_mule_mblen(s);

 if (len < l)
  return -1;

 while (--l > 0)
 {
  c = *++s;
  if (!IS_HIGHBIT_SET(c))
   return -1;
 }
 return mbl;
}
