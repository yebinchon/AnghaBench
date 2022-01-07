
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* plan; } ;
struct TYPE_10__ {int choose_next_subplan; TYPE_2__ ps; int as_pstate; } ;
struct TYPE_9__ {int toc; } ;
struct TYPE_7__ {int plan_node_id; } ;
typedef TYPE_3__ ParallelWorkerContext ;
typedef TYPE_4__ AppendState ;


 int choose_next_subplan_for_worker ;
 int shm_toc_lookup (int ,int ,int) ;

void
ExecAppendInitializeWorker(AppendState *node, ParallelWorkerContext *pwcxt)
{
 node->as_pstate = shm_toc_lookup(pwcxt->toc, node->ps.plan->plan_node_id, 0);
 node->choose_next_subplan = choose_next_subplan_for_worker;
}
