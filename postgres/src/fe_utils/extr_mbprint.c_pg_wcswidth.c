
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PQdsplen (char const*,int) ;
 int PQmblen (char const*,int) ;

int
pg_wcswidth(const char *pwcs, size_t len, int encoding)
{
 int width = 0;

 while (len > 0)
 {
  int chlen,
     chwidth;

  chlen = PQmblen(pwcs, encoding);
  if (len < (size_t) chlen)
   break;

  chwidth = PQdsplen(pwcs, encoding);
  if (chwidth > 0)
   width += chwidth;

  pwcs += chlen;
  len -= chlen;
 }
 return width;
}
