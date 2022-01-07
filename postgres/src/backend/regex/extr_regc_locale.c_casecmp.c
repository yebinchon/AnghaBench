
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ chr ;


 scalar_t__ pg_wc_tolower (scalar_t__ const) ;

__attribute__((used)) static int
casecmp(const chr *x, const chr *y,
  size_t len)
{
 for (; len > 0; len--, x++, y++)
 {
  if ((*x != *y) && (pg_wc_tolower(*x) != pg_wc_tolower(*y)))
   return 1;
 }
 return 0;
}
