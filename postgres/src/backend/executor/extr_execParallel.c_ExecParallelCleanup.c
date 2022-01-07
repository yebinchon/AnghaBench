
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pcxt; int * area; int param_exec; scalar_t__ jit_instrumentation; int planstate; scalar_t__ instrumentation; } ;
typedef TYPE_1__ ParallelExecutorInfo ;


 int DestroyParallelContext (int *) ;
 scalar_t__ DsaPointerIsValid (int ) ;
 int ExecParallelRetrieveInstrumentation (int ,scalar_t__) ;
 int ExecParallelRetrieveJitInstrumentation (int ,scalar_t__) ;
 int InvalidDsaPointer ;
 int dsa_detach (int *) ;
 int dsa_free (int *,int ) ;
 int pfree (TYPE_1__*) ;

void
ExecParallelCleanup(ParallelExecutorInfo *pei)
{

 if (pei->instrumentation)
  ExecParallelRetrieveInstrumentation(pei->planstate,
           pei->instrumentation);


 if (pei->jit_instrumentation)
  ExecParallelRetrieveJitInstrumentation(pei->planstate,
              pei->jit_instrumentation);


 if (DsaPointerIsValid(pei->param_exec))
 {
  dsa_free(pei->area, pei->param_exec);
  pei->param_exec = InvalidDsaPointer;
 }
 if (pei->area != ((void*)0))
 {
  dsa_detach(pei->area);
  pei->area = ((void*)0);
 }
 if (pei->pcxt != ((void*)0))
 {
  DestroyParallelContext(pei->pcxt);
  pei->pcxt = ((void*)0);
 }
 pfree(pei);
}
