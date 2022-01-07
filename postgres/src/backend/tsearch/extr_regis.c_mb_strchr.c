
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_mblen (char*) ;

__attribute__((used)) static bool
mb_strchr(char *str, char *c)
{
 int clen,
    plen,
    i;
 char *ptr = str;
 bool res = 0;

 clen = pg_mblen(c);
 while (*ptr && !res)
 {
  plen = pg_mblen(ptr);
  if (plen == clen)
  {
   i = plen;
   res = 1;
   while (i--)
    if (*(ptr + i) != *(c + i))
    {
     res = 0;
     break;
    }
  }

  ptr += plen;
 }

 return res;
}
