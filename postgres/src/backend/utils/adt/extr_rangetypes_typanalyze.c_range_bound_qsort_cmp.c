
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeCacheEntry ;
typedef int RangeBound ;


 int range_cmp_bounds (int *,int *,int *) ;

__attribute__((used)) static int
range_bound_qsort_cmp(const void *a1, const void *a2, void *arg)
{
 RangeBound *b1 = (RangeBound *) a1;
 RangeBound *b2 = (RangeBound *) a2;
 TypeCacheEntry *typcache = (TypeCacheEntry *) arg;

 return range_cmp_bounds(typcache, b1, b2);
}
