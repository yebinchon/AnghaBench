
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef double float8 ;
struct TYPE_10__ {int fn_oid; } ;
struct TYPE_8__ {int rng_collation; TYPE_7__ rng_subdiff_finfo; } ;
typedef TYPE_1__ TypeCacheEntry ;
struct TYPE_9__ {scalar_t__ lower; scalar_t__ infinite; int val; } ;
typedef TYPE_2__ RangeBound ;


 double DatumGetFloat8 (int ) ;
 int FunctionCall2Coll (TYPE_7__*,int ,int ,int ) ;
 double Max (double,double) ;
 double Min (double,double) ;
 int OidIsValid (int ) ;

__attribute__((used)) static float8
get_position(TypeCacheEntry *typcache, const RangeBound *value, const RangeBound *hist1,
    const RangeBound *hist2)
{
 bool has_subdiff = OidIsValid(typcache->rng_subdiff_finfo.fn_oid);
 float8 position;

 if (!hist1->infinite && !hist2->infinite)
 {
  float8 bin_width;






  if (value->infinite)
   return 0.5;


  if (!has_subdiff)
   return 0.5;


  bin_width = DatumGetFloat8(FunctionCall2Coll(
              &typcache->rng_subdiff_finfo,
              typcache->rng_collation,
              hist2->val,
              hist1->val));
  if (bin_width <= 0.0)
   return 0.5;

  position = DatumGetFloat8(FunctionCall2Coll(
             &typcache->rng_subdiff_finfo,
             typcache->rng_collation,
             value->val,
             hist1->val))
   / bin_width;


  position = Max(position, 0.0);
  position = Min(position, 1.0);
  return position;
 }
 else if (hist1->infinite && !hist2->infinite)
 {






  return ((value->infinite && value->lower) ? 0.0 : 1.0);
 }
 else if (!hist1->infinite && hist2->infinite)
 {

  return ((value->infinite && !value->lower) ? 1.0 : 0.0);
 }
 else
 {
  return 0.5;
 }
}
