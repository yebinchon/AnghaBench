
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int recheckCurItem; int queryCategories; int queryValues; int extra_data; int nuserentries; int query; int strategy; int entryRes; int collation; int triConsistentFmgrInfo; } ;
typedef scalar_t__ GinTernaryValue ;
typedef TYPE_1__* GinScanKey ;


 scalar_t__ DatumGetGinTernaryValue (int ) ;
 int FunctionCall7Coll (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ GIN_MAYBE ;
 int PointerGetDatum (int ) ;
 int UInt16GetDatum (int ) ;
 int UInt32GetDatum (int ) ;

__attribute__((used)) static bool
shimBoolConsistentFn(GinScanKey key)
{
 GinTernaryValue result;

 result = DatumGetGinTernaryValue(FunctionCall7Coll(
                key->triConsistentFmgrInfo,
                key->collation,
                PointerGetDatum(key->entryRes),
                UInt16GetDatum(key->strategy),
                key->query,
                UInt32GetDatum(key->nuserentries),
                PointerGetDatum(key->extra_data),
                PointerGetDatum(key->queryValues),
                PointerGetDatum(key->queryCategories)));
 if (result == GIN_MAYBE)
 {
  key->recheckCurItem = 1;
  return 1;
 }
 else
 {
  key->recheckCurItem = 0;
  return result;
 }
}
