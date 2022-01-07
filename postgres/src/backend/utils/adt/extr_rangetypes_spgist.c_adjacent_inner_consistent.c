
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeCacheEntry ;
typedef int RangeBound ;


 int adjacent_cmp_bounds (int *,int const*,int const*) ;
 int range_cmp_bounds (int *,int const*,int const*) ;

__attribute__((used)) static int
adjacent_inner_consistent(TypeCacheEntry *typcache, const RangeBound *arg,
        const RangeBound *centroid, const RangeBound *prev)
{
 if (prev)
 {
  int prevcmp;
  int cmp;





  prevcmp = adjacent_cmp_bounds(typcache, arg, prev);


  cmp = range_cmp_bounds(typcache, centroid, prev);


  if ((prevcmp < 0 && cmp >= 0) || (prevcmp > 0 && cmp < 0))
   return 0;
 }

 return adjacent_cmp_bounds(typcache, arg, centroid);
}
