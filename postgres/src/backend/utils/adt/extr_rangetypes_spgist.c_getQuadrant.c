
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef int TypeCacheEntry ;
typedef int RangeType ;
typedef int RangeBound ;


 scalar_t__ range_cmp_bounds (int *,int *,int *) ;
 int range_deserialize (int *,int const*,int *,int *,int*) ;

__attribute__((used)) static int16
getQuadrant(TypeCacheEntry *typcache, const RangeType *centroid, const RangeType *tst)
{
 RangeBound centroidLower,
    centroidUpper;
 bool centroidEmpty;
 RangeBound lower,
    upper;
 bool empty;

 range_deserialize(typcache, centroid, &centroidLower, &centroidUpper,
       &centroidEmpty);
 range_deserialize(typcache, tst, &lower, &upper, &empty);

 if (empty)
  return 5;

 if (range_cmp_bounds(typcache, &lower, &centroidLower) >= 0)
 {
  if (range_cmp_bounds(typcache, &upper, &centroidUpper) >= 0)
   return 1;
  else
   return 2;
 }
 else
 {
  if (range_cmp_bounds(typcache, &upper, &centroidUpper) >= 0)
   return 4;
  else
   return 3;
 }
}
