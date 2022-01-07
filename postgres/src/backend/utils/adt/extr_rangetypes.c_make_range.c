
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int fn_oid; } ;
struct TYPE_5__ {TYPE_4__ rng_canonical_finfo; } ;
typedef TYPE_1__ TypeCacheEntry ;
typedef int RangeType ;
typedef int RangeBound ;


 int * DatumGetRangeTypeP (int ) ;
 int FunctionCall1 (TYPE_4__*,int ) ;
 scalar_t__ OidIsValid (int ) ;
 int RangeIsEmpty (int *) ;
 int RangeTypePGetDatum (int *) ;
 int * range_serialize (TYPE_1__*,int *,int *,int) ;

RangeType *
make_range(TypeCacheEntry *typcache, RangeBound *lower, RangeBound *upper,
     bool empty)
{
 RangeType *range;

 range = range_serialize(typcache, lower, upper, empty);


 if (OidIsValid(typcache->rng_canonical_finfo.fn_oid) &&
  !RangeIsEmpty(range))
  range = DatumGetRangeTypeP(FunctionCall1(&typcache->rng_canonical_finfo,
             RangeTypePGetDatum(range)));

 return range;
}
