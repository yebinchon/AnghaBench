
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int TypeCacheEntry ;
struct TYPE_8__ {scalar_t__ lower; } ;
typedef TYPE_1__ RangeBound ;


 int Assert (int) ;
 int bounds_adjacent (int *,TYPE_1__ const,TYPE_1__ const) ;
 int range_cmp_bounds (int *,TYPE_1__ const*,TYPE_1__ const*) ;

__attribute__((used)) static int
adjacent_cmp_bounds(TypeCacheEntry *typcache, const RangeBound *arg,
     const RangeBound *centroid)
{
 int cmp;

 Assert(arg->lower != centroid->lower);

 cmp = range_cmp_bounds(typcache, arg, centroid);

 if (centroid->lower)
 {
  if (cmp < 0 && !bounds_adjacent(typcache, *arg, *centroid))
   return -1;
  else
   return 1;
 }
 else
 {
  if (cmp <= 0)
   return -1;
  else
   return 1;
 }
}
