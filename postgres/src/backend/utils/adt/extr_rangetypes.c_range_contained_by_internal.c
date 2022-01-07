
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeCacheEntry ;
typedef int RangeType ;


 int range_contains_internal (int *,int const*,int const*) ;

bool
range_contained_by_internal(TypeCacheEntry *typcache, const RangeType *r1, const RangeType *r2)
{
 return range_contains_internal(typcache, r2, r1);
}
