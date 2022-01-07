
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_5__* WindowStatePerFunc ;
struct TYPE_14__ {TYPE_1__* ps_ExprContext; } ;
struct TYPE_15__ {TYPE_2__ ps; } ;
struct TYPE_18__ {int * curaggcontext; TYPE_3__ ss; } ;
typedef TYPE_6__ WindowAggState ;
struct TYPE_19__ {int isnull; TYPE_4__* args; } ;
struct TYPE_17__ {int numArguments; int resulttypeLen; int resulttypeByVal; scalar_t__ winobj; int winCollation; int flinfo; } ;
struct TYPE_16__ {int isnull; } ;
struct TYPE_13__ {int ecxt_per_tuple_memory; } ;
typedef int MemoryContext ;
typedef int Datum ;


 int CurrentMemoryContext ;
 int DatumGetPointer (int ) ;
 int FUNC_MAX_ARGS ;
 int FunctionCallInvoke (TYPE_7__*) ;
 int InitFunctionCallInfoData (TYPE_7__,int *,int,int ,void*,int *) ;
 int LOCAL_FCINFO (TYPE_7__*,int ) ;
 int MemoryContextContains (int ,int ) ;
 int MemoryContextSwitchTo (int ) ;
 int datumCopy (int ,int ,int ) ;
 TYPE_7__* fcinfo ;

__attribute__((used)) static void
eval_windowfunction(WindowAggState *winstate, WindowStatePerFunc perfuncstate,
     Datum *result, bool *isnull)
{
 LOCAL_FCINFO(fcinfo, FUNC_MAX_ARGS);
 MemoryContext oldContext;

 oldContext = MemoryContextSwitchTo(winstate->ss.ps.ps_ExprContext->ecxt_per_tuple_memory);







 InitFunctionCallInfoData(*fcinfo, &(perfuncstate->flinfo),
        perfuncstate->numArguments,
        perfuncstate->winCollation,
        (void *) perfuncstate->winobj, ((void*)0));

 for (int argno = 0; argno < perfuncstate->numArguments; argno++)
  fcinfo->args[argno].isnull = 1;

 winstate->curaggcontext = ((void*)0);

 *result = FunctionCallInvoke(fcinfo);
 *isnull = fcinfo->isnull;






 if (!perfuncstate->resulttypeByVal && !fcinfo->isnull &&
  !MemoryContextContains(CurrentMemoryContext,
          DatumGetPointer(*result)))
  *result = datumCopy(*result,
       perfuncstate->resulttypeByVal,
       perfuncstate->resulttypeLen);

 MemoryContextSwitchTo(oldContext);
}
