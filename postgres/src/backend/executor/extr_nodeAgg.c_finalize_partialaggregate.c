
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_24__ {size_t transno; int resulttypeLen; int resulttypeByVal; } ;
struct TYPE_23__ {int transValueIsNull; scalar_t__ transValue; } ;
struct TYPE_19__ {scalar_t__ fn_strict; } ;
struct TYPE_22__ {int transtypeLen; TYPE_6__* serialfn_fcinfo; TYPE_4__ serialfn; int serialfn_oid; } ;
struct TYPE_21__ {int isnull; TYPE_5__* args; } ;
struct TYPE_20__ {int isnull; int value; } ;
struct TYPE_17__ {TYPE_1__* ps_ExprContext; } ;
struct TYPE_18__ {TYPE_2__ ps; } ;
struct TYPE_16__ {int ecxt_per_tuple_memory; } ;
struct TYPE_15__ {TYPE_3__ ss; TYPE_7__* pertrans; } ;
typedef int MemoryContext ;
typedef TYPE_6__* FunctionCallInfo ;
typedef scalar_t__ Datum ;
typedef TYPE_7__* AggStatePerTrans ;
typedef TYPE_8__* AggStatePerGroup ;
typedef TYPE_9__* AggStatePerAgg ;
typedef TYPE_10__ AggState ;


 int CurrentMemoryContext ;
 int DatumGetPointer (scalar_t__) ;
 scalar_t__ FunctionCallInvoke (TYPE_6__*) ;
 int MakeExpandedObjectReadOnly (scalar_t__,int,int ) ;
 int MemoryContextContains (int ,int ) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ OidIsValid (int ) ;
 scalar_t__ datumCopy (scalar_t__,int ,int ) ;

__attribute__((used)) static void
finalize_partialaggregate(AggState *aggstate,
        AggStatePerAgg peragg,
        AggStatePerGroup pergroupstate,
        Datum *resultVal, bool *resultIsNull)
{
 AggStatePerTrans pertrans = &aggstate->pertrans[peragg->transno];
 MemoryContext oldContext;

 oldContext = MemoryContextSwitchTo(aggstate->ss.ps.ps_ExprContext->ecxt_per_tuple_memory);





 if (OidIsValid(pertrans->serialfn_oid))
 {

  if (pertrans->serialfn.fn_strict && pergroupstate->transValueIsNull)
  {
   *resultVal = (Datum) 0;
   *resultIsNull = 1;
  }
  else
  {
   FunctionCallInfo fcinfo = pertrans->serialfn_fcinfo;

   fcinfo->args[0].value =
    MakeExpandedObjectReadOnly(pergroupstate->transValue,
             pergroupstate->transValueIsNull,
             pertrans->transtypeLen);
   fcinfo->args[0].isnull = pergroupstate->transValueIsNull;

   *resultVal = FunctionCallInvoke(fcinfo);
   *resultIsNull = fcinfo->isnull;
  }
 }
 else
 {

  *resultVal = pergroupstate->transValue;
  *resultIsNull = pergroupstate->transValueIsNull;
 }


 if (!peragg->resulttypeByVal && !*resultIsNull &&
  !MemoryContextContains(CurrentMemoryContext,
          DatumGetPointer(*resultVal)))
  *resultVal = datumCopy(*resultVal,
          peragg->resulttypeByVal,
          peragg->resulttypeLen);

 MemoryContextSwitchTo(oldContext);
}
