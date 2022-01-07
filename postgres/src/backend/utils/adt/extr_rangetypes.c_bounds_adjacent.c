
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int fn_oid; } ;
struct TYPE_14__ {TYPE_1__ rng_canonical_finfo; } ;
typedef TYPE_2__ TypeCacheEntry ;
struct TYPE_15__ {int lower; int inclusive; } ;
typedef int RangeType ;
typedef TYPE_3__ RangeBound ;


 int Assert (int) ;
 int OidIsValid (int ) ;
 int RangeIsEmpty (int *) ;
 int * make_range (TYPE_2__*,TYPE_3__*,TYPE_3__*,int) ;
 int range_cmp_bound_values (TYPE_2__*,TYPE_3__*,TYPE_3__*) ;

bool
bounds_adjacent(TypeCacheEntry *typcache, RangeBound boundA, RangeBound boundB)
{
 int cmp;

 Assert(!boundA.lower && boundB.lower);

 cmp = range_cmp_bound_values(typcache, &boundA, &boundB);
 if (cmp < 0)
 {
  RangeType *r;






  if (!OidIsValid(typcache->rng_canonical_finfo.fn_oid))
   return 0;







  boundA.inclusive = !boundA.inclusive;
  boundB.inclusive = !boundB.inclusive;

  boundA.lower = 1;
  boundB.lower = 0;
  r = make_range(typcache, &boundA, &boundB, 0);
  return RangeIsEmpty(r);
 }
 else if (cmp == 0)
  return boundA.inclusive != boundB.inclusive;
 else
  return 0;
}
