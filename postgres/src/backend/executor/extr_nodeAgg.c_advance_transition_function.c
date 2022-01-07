
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_22__ {TYPE_4__* curaggcontext; TYPE_6__* curpertrans; TYPE_2__* tmpcontext; } ;
struct TYPE_21__ {int noTransValue; int transValueIsNull; void* transValue; } ;
struct TYPE_15__ {scalar_t__ fn_strict; } ;
struct TYPE_20__ {int numTransInputs; int transtypeLen; int transtypeByVal; TYPE_1__ transfn; TYPE_5__* transfn_fcinfo; } ;
struct TYPE_19__ {int isnull; TYPE_3__* args; } ;
struct TYPE_18__ {int ecxt_per_tuple_memory; } ;
struct TYPE_17__ {int isnull; void* value; } ;
struct TYPE_16__ {int ecxt_per_tuple_memory; } ;
struct TYPE_14__ {int eoh_context; } ;
typedef int MemoryContext ;
typedef TYPE_5__* FunctionCallInfo ;
typedef void* Datum ;
typedef TYPE_6__* AggStatePerTrans ;
typedef TYPE_7__* AggStatePerGroup ;
typedef TYPE_8__ AggState ;


 scalar_t__ CurrentMemoryContext ;
 TYPE_13__* DatumGetEOHP (void*) ;
 scalar_t__ DatumGetPointer (void*) ;
 scalar_t__ DatumIsReadWriteExpandedObject (void*,int,int ) ;
 int DeleteExpandedObject (void*) ;
 void* FunctionCallInvoke (TYPE_5__*) ;
 scalar_t__ MemoryContextGetParent (int ) ;
 int MemoryContextSwitchTo (int ) ;
 void* datumCopy (void*,int ,int ) ;
 int pfree (scalar_t__) ;

__attribute__((used)) static void
advance_transition_function(AggState *aggstate,
       AggStatePerTrans pertrans,
       AggStatePerGroup pergroupstate)
{
 FunctionCallInfo fcinfo = pertrans->transfn_fcinfo;
 MemoryContext oldContext;
 Datum newVal;

 if (pertrans->transfn.fn_strict)
 {




  int numTransInputs = pertrans->numTransInputs;
  int i;

  for (i = 1; i <= numTransInputs; i++)
  {
   if (fcinfo->args[i].isnull)
    return;
  }
  if (pergroupstate->noTransValue)
  {
   oldContext = MemoryContextSwitchTo(
              aggstate->curaggcontext->ecxt_per_tuple_memory);
   pergroupstate->transValue = datumCopy(fcinfo->args[1].value,
              pertrans->transtypeByVal,
              pertrans->transtypeLen);
   pergroupstate->transValueIsNull = 0;
   pergroupstate->noTransValue = 0;
   MemoryContextSwitchTo(oldContext);
   return;
  }
  if (pergroupstate->transValueIsNull)
  {






   return;
  }
 }


 oldContext = MemoryContextSwitchTo(aggstate->tmpcontext->ecxt_per_tuple_memory);


 aggstate->curpertrans = pertrans;




 fcinfo->args[0].value = pergroupstate->transValue;
 fcinfo->args[0].isnull = pergroupstate->transValueIsNull;
 fcinfo->isnull = 0;

 newVal = FunctionCallInvoke(fcinfo);

 aggstate->curpertrans = ((void*)0);
 if (!pertrans->transtypeByVal &&
  DatumGetPointer(newVal) != DatumGetPointer(pergroupstate->transValue))
 {
  if (!fcinfo->isnull)
  {
   MemoryContextSwitchTo(aggstate->curaggcontext->ecxt_per_tuple_memory);
   if (DatumIsReadWriteExpandedObject(newVal,
              0,
              pertrans->transtypeLen) &&
    MemoryContextGetParent(DatumGetEOHP(newVal)->eoh_context) == CurrentMemoryContext)
                      ;
   else
    newVal = datumCopy(newVal,
           pertrans->transtypeByVal,
           pertrans->transtypeLen);
  }
  if (!pergroupstate->transValueIsNull)
  {
   if (DatumIsReadWriteExpandedObject(pergroupstate->transValue,
              0,
              pertrans->transtypeLen))
    DeleteExpandedObject(pergroupstate->transValue);
   else
    pfree(DatumGetPointer(pergroupstate->transValue));
  }
 }

 pergroupstate->transValue = newVal;
 pergroupstate->transValueIsNull = fcinfo->isnull;

 MemoryContextSwitchTo(oldContext);
}
