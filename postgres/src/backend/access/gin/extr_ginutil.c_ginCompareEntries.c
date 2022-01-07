
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * supportCollation; int * compareFn; } ;
typedef int OffsetNumber ;
typedef TYPE_1__ GinState ;
typedef scalar_t__ GinNullCategory ;
typedef int Datum ;


 int DatumGetInt32 (int ) ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;
 scalar_t__ GIN_CAT_NORM_KEY ;

int
ginCompareEntries(GinState *ginstate, OffsetNumber attnum,
      Datum a, GinNullCategory categorya,
      Datum b, GinNullCategory categoryb)
{

 if (categorya != categoryb)
  return (categorya < categoryb) ? -1 : 1;


 if (categorya != GIN_CAT_NORM_KEY)
  return 0;


 return DatumGetInt32(FunctionCall2Coll(&ginstate->compareFn[attnum - 1],
             ginstate->supportCollation[attnum - 1],
             a, b));
}
