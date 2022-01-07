
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_7__ {int rng_collation; int rng_cmp_proc_finfo; } ;
typedef TYPE_1__ TypeCacheEntry ;
struct TYPE_8__ {int inclusive; int val; int infinite; } ;
typedef int RangeType ;
typedef TYPE_2__ RangeBound ;
typedef int Datum ;


 scalar_t__ DatumGetInt32 (int ) ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;
 int range_deserialize (TYPE_1__*,int const*,TYPE_2__*,TYPE_2__*,int*) ;

bool
range_contains_elem_internal(TypeCacheEntry *typcache, const RangeType *r, Datum val)
{
 RangeBound lower;
 RangeBound upper;
 bool empty;
 int32 cmp;

 range_deserialize(typcache, r, &lower, &upper, &empty);

 if (empty)
  return 0;

 if (!lower.infinite)
 {
  cmp = DatumGetInt32(FunctionCall2Coll(&typcache->rng_cmp_proc_finfo,
             typcache->rng_collation,
             lower.val, val));
  if (cmp > 0)
   return 0;
  if (cmp == 0 && !lower.inclusive)
   return 0;
 }

 if (!upper.infinite)
 {
  cmp = DatumGetInt32(FunctionCall2Coll(&typcache->rng_cmp_proc_finfo,
             typcache->rng_collation,
             upper.val, val));
  if (cmp < 0)
   return 0;
  if (cmp == 0 && !upper.inclusive)
   return 0;
 }

 return 1;
}
