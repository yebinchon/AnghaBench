
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef double float8 ;
struct TYPE_3__ {int rng_collation; int rng_subdiff_finfo; } ;
typedef TYPE_1__ TypeCacheEntry ;
typedef int Datum ;


 double DatumGetFloat8 (int ) ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;

__attribute__((used)) static float8
call_subtype_diff(TypeCacheEntry *typcache, Datum val1, Datum val2)
{
 float8 value;

 value = DatumGetFloat8(FunctionCall2Coll(&typcache->rng_subdiff_finfo,
            typcache->rng_collation,
            val1, val2));

 if (value >= 0.0)
  return value;
 return 0.0;
}
