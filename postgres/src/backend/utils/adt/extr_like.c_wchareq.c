
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_mblen (char const*) ;

__attribute__((used)) static inline int
wchareq(const char *p1, const char *p2)
{
 int p1_len;


 if (*p1 != *p2)
  return 0;

 p1_len = pg_mblen(p1);
 if (pg_mblen(p2) != p1_len)
  return 0;


 while (p1_len--)
 {
  if (*p1++ != *p2++)
   return 0;
 }
 return 1;
}
