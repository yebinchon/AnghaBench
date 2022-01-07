
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeCacheEntry ;
typedef int RangeBound ;


 int range_cmp_bounds (int *,int *,int *) ;

__attribute__((used)) static int
bound_cmp(const void *a, const void *b, void *arg)
{
 RangeBound *ba = (RangeBound *) a;
 RangeBound *bb = (RangeBound *) b;
 TypeCacheEntry *typcache = (TypeCacheEntry *) arg;

 return range_cmp_bounds(typcache, ba, bb);
}
