
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISSJISHEAD (unsigned char) ;
 int ISSJISTAIL (unsigned char) ;
 int pg_sjis_mblen (unsigned char const*) ;

__attribute__((used)) static int
pg_sjis_verifier(const unsigned char *s, int len)
{
 int l,
    mbl;
 unsigned char c1,
    c2;

 l = mbl = pg_sjis_mblen(s);

 if (len < l)
  return -1;

 if (l == 1)
  return mbl;

 c1 = *s++;
 c2 = *s;
 if (!ISSJISHEAD(c1) || !ISSJISTAIL(c2))
  return -1;
 return mbl;
}
