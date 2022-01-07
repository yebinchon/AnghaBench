
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_utf8_islegal (unsigned char const*,int) ;
 int pg_utf_mblen (unsigned char const*) ;

__attribute__((used)) static int
pg_utf8_verifier(const unsigned char *s, int len)
{
 int l = pg_utf_mblen(s);

 if (len < l)
  return -1;

 if (!pg_utf8_islegal(s, l))
  return -1;

 return l;
}
