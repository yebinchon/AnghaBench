
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* plan; } ;
struct TYPE_15__ {int choose_next_subplan; TYPE_4__* as_pstate; TYPE_1__ ps; int pstate_len; } ;
struct TYPE_14__ {int pa_lock; } ;
struct TYPE_13__ {int toc; } ;
struct TYPE_12__ {int plan_node_id; } ;
typedef TYPE_3__ ParallelContext ;
typedef TYPE_4__ ParallelAppendState ;
typedef TYPE_5__ AppendState ;


 int LWLockInitialize (int *,int ) ;
 int LWTRANCHE_PARALLEL_APPEND ;
 int choose_next_subplan_for_leader ;
 int memset (TYPE_4__*,int ,int ) ;
 TYPE_4__* shm_toc_allocate (int ,int ) ;
 int shm_toc_insert (int ,int ,TYPE_4__*) ;

void
ExecAppendInitializeDSM(AppendState *node,
      ParallelContext *pcxt)
{
 ParallelAppendState *pstate;

 pstate = shm_toc_allocate(pcxt->toc, node->pstate_len);
 memset(pstate, 0, node->pstate_len);
 LWLockInitialize(&pstate->pa_lock, LWTRANCHE_PARALLEL_APPEND);
 shm_toc_insert(pcxt->toc, node->ps.plan->plan_node_id, pstate);

 node->as_pstate = pstate;
 node->choose_next_subplan = choose_next_subplan_for_leader;
}
