
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int recheckCurItem; int* entryRes; int* extra_data; int* queryValues; int* queryCategories; int nuserentries; int query; int strategy; int collation; int consistentFmgrInfo; } ;
typedef TYPE_1__* GinScanKey ;


 int DatumGetBool (int ) ;
 int FunctionCall8Coll (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int PointerGetDatum (int*) ;
 int UInt16GetDatum (int ) ;
 int UInt32GetDatum (int ) ;

__attribute__((used)) static bool
directBoolConsistentFn(GinScanKey key)
{




 key->recheckCurItem = 1;

 return DatumGetBool(FunctionCall8Coll(key->consistentFmgrInfo,
            key->collation,
            PointerGetDatum(key->entryRes),
            UInt16GetDatum(key->strategy),
            key->query,
            UInt32GetDatum(key->nuserentries),
            PointerGetDatum(key->extra_data),
            PointerGetDatum(&key->recheckCurItem),
            PointerGetDatum(key->queryValues),
            PointerGetDatum(key->queryCategories)));
}
