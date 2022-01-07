
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;


typedef TYPE_6__* WindowStatePerFunc ;
typedef TYPE_7__* WindowStatePerAgg ;
struct TYPE_19__ {TYPE_1__* ps_ExprContext; } ;
struct TYPE_20__ {TYPE_2__ ps; } ;
struct TYPE_25__ {int * curaggcontext; TYPE_3__ ss; } ;
typedef TYPE_8__ WindowAggState ;
struct TYPE_24__ {int numFinalArgs; int transValueIsNull; int resulttypeLen; int resulttypeByVal; scalar_t__ transValue; int * aggcontext; int transtypeLen; int finalfn; int finalfn_oid; } ;
struct TYPE_23__ {int winCollation; } ;
struct TYPE_22__ {scalar_t__ fn_strict; } ;
struct TYPE_21__ {int isnull; scalar_t__ value; } ;
struct TYPE_18__ {int ecxt_per_tuple_memory; } ;
struct TYPE_17__ {int isnull; TYPE_5__* flinfo; TYPE_4__* args; } ;
struct TYPE_16__ {int fcinfo; } ;
typedef int MemoryContext ;
typedef scalar_t__ Datum ;


 int CurrentMemoryContext ;
 int DatumGetPointer (scalar_t__) ;
 int FUNC_MAX_ARGS ;
 scalar_t__ FunctionCallInvoke (TYPE_13__*) ;
 int InitFunctionCallInfoData (int ,int *,int,int ,void*,int *) ;
 int LOCAL_FCINFO (TYPE_13__*,int ) ;
 scalar_t__ MakeExpandedObjectReadOnly (scalar_t__,int,int ) ;
 int MemoryContextContains (int ,int ) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ OidIsValid (int ) ;
 scalar_t__ datumCopy (scalar_t__,int ,int ) ;
 TYPE_13__* fcinfo ;
 TYPE_12__ fcinfodata ;

__attribute__((used)) static void
finalize_windowaggregate(WindowAggState *winstate,
       WindowStatePerFunc perfuncstate,
       WindowStatePerAgg peraggstate,
       Datum *result, bool *isnull)
{
 MemoryContext oldContext;

 oldContext = MemoryContextSwitchTo(winstate->ss.ps.ps_ExprContext->ecxt_per_tuple_memory);




 if (OidIsValid(peraggstate->finalfn_oid))
 {
  LOCAL_FCINFO(fcinfo, FUNC_MAX_ARGS);
  int numFinalArgs = peraggstate->numFinalArgs;
  bool anynull;
  int i;

  InitFunctionCallInfoData(fcinfodata.fcinfo, &(peraggstate->finalfn),
         numFinalArgs,
         perfuncstate->winCollation,
         (void *) winstate, ((void*)0));
  fcinfo->args[0].value =
   MakeExpandedObjectReadOnly(peraggstate->transValue,
            peraggstate->transValueIsNull,
            peraggstate->transtypeLen);
  fcinfo->args[0].isnull = peraggstate->transValueIsNull;
  anynull = peraggstate->transValueIsNull;


  for (i = 1; i < numFinalArgs; i++)
  {
   fcinfo->args[i].value = (Datum) 0;
   fcinfo->args[i].isnull = 1;
   anynull = 1;
  }

  if (fcinfo->flinfo->fn_strict && anynull)
  {

   *result = (Datum) 0;
   *isnull = 1;
  }
  else
  {
   winstate->curaggcontext = peraggstate->aggcontext;
   *result = FunctionCallInvoke(fcinfo);
   winstate->curaggcontext = ((void*)0);
   *isnull = fcinfo->isnull;
  }
 }
 else
 {

  *result = peraggstate->transValue;
  *isnull = peraggstate->transValueIsNull;
 }




 if (!peraggstate->resulttypeByVal && !*isnull &&
  !MemoryContextContains(CurrentMemoryContext,
          DatumGetPointer(*result)))
  *result = datumCopy(*result,
       peraggstate->resulttypeByVal,
       peraggstate->resulttypeLen);
 MemoryContextSwitchTo(oldContext);
}
