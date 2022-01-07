
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {int toc; } ;
struct TYPE_17__ {int * es_query_dsa; } ;
struct TYPE_16__ {int param_exec; } ;
struct TYPE_15__ {int finished; TYPE_7__* pcxt; int * area; int param_exec; int * reader; int tqueue; } ;
struct TYPE_14__ {TYPE_4__* state; } ;
typedef TYPE_1__ PlanState ;
typedef TYPE_2__ ParallelExecutorInfo ;
typedef TYPE_3__ FixedParallelExecutorState ;
typedef TYPE_4__ EState ;
typedef int Bitmapset ;


 int Assert (int) ;
 scalar_t__ DsaPointerIsValid (int ) ;
 int ExecParallelReInitializeDSM (TYPE_1__*,TYPE_7__*) ;
 int ExecParallelSetupTupleQueues (TYPE_7__*,int) ;
 int ExecSetParamPlanMulti (int *,int ) ;
 int GetPerTupleExprContext (TYPE_4__*) ;
 int InvalidDsaPointer ;
 int PARALLEL_KEY_EXECUTOR_FIXED ;
 int ReinitializeParallelDSM (TYPE_7__*) ;
 int SerializeParamExecParams (TYPE_4__*,int *,int *) ;
 int bms_is_empty (int *) ;
 int dsa_free (int *,int ) ;
 TYPE_3__* shm_toc_lookup (int ,int ,int) ;

void
ExecParallelReinitialize(PlanState *planstate,
       ParallelExecutorInfo *pei,
       Bitmapset *sendParams)
{
 EState *estate = planstate->state;
 FixedParallelExecutorState *fpes;


 Assert(pei->finished);






 ExecSetParamPlanMulti(sendParams, GetPerTupleExprContext(estate));

 ReinitializeParallelDSM(pei->pcxt);
 pei->tqueue = ExecParallelSetupTupleQueues(pei->pcxt, 1);
 pei->reader = ((void*)0);
 pei->finished = 0;

 fpes = shm_toc_lookup(pei->pcxt->toc, PARALLEL_KEY_EXECUTOR_FIXED, 0);


 if (DsaPointerIsValid(fpes->param_exec))
 {
  dsa_free(pei->area, fpes->param_exec);
  fpes->param_exec = InvalidDsaPointer;
 }


 if (!bms_is_empty(sendParams))
 {
  pei->param_exec = SerializeParamExecParams(estate, sendParams,
               pei->area);
  fpes->param_exec = pei->param_exec;
 }


 estate->es_query_dsa = pei->area;
 ExecParallelReInitializeDSM(planstate, pei->pcxt);
 estate->es_query_dsa = ((void*)0);
}
