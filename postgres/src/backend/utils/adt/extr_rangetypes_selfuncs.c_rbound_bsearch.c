
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeCacheEntry ;
typedef int RangeBound ;


 int range_cmp_bounds (int *,int const*,int const*) ;

__attribute__((used)) static int
rbound_bsearch(TypeCacheEntry *typcache, const RangeBound *value, const RangeBound *hist,
      int hist_length, bool equal)
{
 int lower = -1,
    upper = hist_length - 1,
    cmp,
    middle;

 while (lower < upper)
 {
  middle = (lower + upper + 1) / 2;
  cmp = range_cmp_bounds(typcache, &hist[middle], value);

  if (cmp < 0 || (equal && cmp == 0))
   lower = middle;
  else
   upper = middle - 1;
 }
 return lower;
}
