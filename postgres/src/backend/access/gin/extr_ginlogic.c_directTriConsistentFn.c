
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int queryCategories; int queryValues; int extra_data; int nuserentries; int query; int strategy; int entryRes; int collation; int triConsistentFmgrInfo; } ;
typedef int GinTernaryValue ;
typedef TYPE_1__* GinScanKey ;


 int DatumGetGinTernaryValue (int ) ;
 int FunctionCall7Coll (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int PointerGetDatum (int ) ;
 int UInt16GetDatum (int ) ;
 int UInt32GetDatum (int ) ;

__attribute__((used)) static GinTernaryValue
directTriConsistentFn(GinScanKey key)
{
 return DatumGetGinTernaryValue(FunctionCall7Coll(
              key->triConsistentFmgrInfo,
              key->collation,
              PointerGetDatum(key->entryRes),
              UInt16GetDatum(key->strategy),
              key->query,
              UInt32GetDatum(key->nuserentries),
              PointerGetDatum(key->extra_data),
              PointerGetDatum(key->queryValues),
              PointerGetDatum(key->queryCategories)));
}
