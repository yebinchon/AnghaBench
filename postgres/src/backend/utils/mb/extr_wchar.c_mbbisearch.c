
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbinterval {scalar_t__ first; scalar_t__ last; } ;
typedef scalar_t__ pg_wchar ;



__attribute__((used)) static int
mbbisearch(pg_wchar ucs, const struct mbinterval *table, int max)
{
 int min = 0;
 int mid;

 if (ucs < table[0].first || ucs > table[max].last)
  return 0;
 while (max >= min)
 {
  mid = (min + max) / 2;
  if (ucs > table[mid].last)
   min = mid + 1;
  else if (ucs < table[mid].first)
   max = mid - 1;
  else
   return 1;
 }

 return 0;
}
