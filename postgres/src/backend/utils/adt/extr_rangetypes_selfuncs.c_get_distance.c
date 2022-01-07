
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef double float8 ;
struct TYPE_9__ {int fn_oid; } ;
struct TYPE_7__ {int rng_collation; TYPE_6__ rng_subdiff_finfo; } ;
typedef TYPE_1__ TypeCacheEntry ;
struct TYPE_8__ {scalar_t__ lower; scalar_t__ infinite; int val; } ;
typedef TYPE_2__ RangeBound ;


 double DatumGetFloat8 (int ) ;
 int FunctionCall2Coll (TYPE_6__*,int ,int ,int ) ;
 int OidIsValid (int ) ;
 double get_float8_infinity () ;

__attribute__((used)) static float8
get_distance(TypeCacheEntry *typcache, const RangeBound *bound1, const RangeBound *bound2)
{
 bool has_subdiff = OidIsValid(typcache->rng_subdiff_finfo.fn_oid);

 if (!bound1->infinite && !bound2->infinite)
 {




  if (has_subdiff)
   return
    DatumGetFloat8(FunctionCall2Coll(&typcache->rng_subdiff_finfo,
             typcache->rng_collation,
             bound2->val,
             bound1->val));
  else
   return 1.0;
 }
 else if (bound1->infinite && bound2->infinite)
 {

  if (bound1->lower == bound2->lower)
   return 0.0;
  else
   return get_float8_infinity();
 }
 else
 {

  return get_float8_infinity();
 }
}
