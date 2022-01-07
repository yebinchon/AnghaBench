
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_6__ {int isnull; } ;
struct TYPE_5__ {int typlen; int typbyval; scalar_t__ returnsTuple; } ;
typedef TYPE_1__* SQLFunctionCachePtr ;
typedef int MemoryContext ;
typedef TYPE_2__* FunctionCallInfo ;
typedef int Datum ;


 int ExecFetchSlotHeapTupleDatum (int *) ;
 int MemoryContextSwitchTo (int ) ;
 int datumCopy (int ,int ,int ) ;
 int slot_getattr (int *,int,int*) ;

__attribute__((used)) static Datum
postquel_get_single_result(TupleTableSlot *slot,
         FunctionCallInfo fcinfo,
         SQLFunctionCachePtr fcache,
         MemoryContext resultcontext)
{
 Datum value;
 MemoryContext oldcontext;







 oldcontext = MemoryContextSwitchTo(resultcontext);

 if (fcache->returnsTuple)
 {

  fcinfo->isnull = 0;
  value = ExecFetchSlotHeapTupleDatum(slot);
 }
 else
 {




  value = slot_getattr(slot, 1, &(fcinfo->isnull));

  if (!fcinfo->isnull)
   value = datumCopy(value, fcache->typbyval, fcache->typlen);
 }

 MemoryContextSwitchTo(oldcontext);

 return value;
}
