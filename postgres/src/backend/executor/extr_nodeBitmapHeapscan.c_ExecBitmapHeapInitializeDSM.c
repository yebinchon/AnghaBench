
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int dsa_area ;
struct TYPE_13__ {TYPE_1__* plan; TYPE_6__* state; } ;
struct TYPE_14__ {TYPE_2__ ps; } ;
struct TYPE_18__ {TYPE_5__* pstate; TYPE_3__ ss; int pscan_len; } ;
struct TYPE_17__ {int es_snapshot; int * es_query_dsa; } ;
struct TYPE_16__ {int phs_snapshot_data; int cv; int state; scalar_t__ prefetch_target; scalar_t__ prefetch_pages; int mutex; scalar_t__ prefetch_iterator; scalar_t__ tbmiterator; } ;
struct TYPE_15__ {int toc; } ;
struct TYPE_12__ {int plan_node_id; } ;
typedef TYPE_4__ ParallelContext ;
typedef TYPE_5__ ParallelBitmapHeapState ;
typedef TYPE_6__ EState ;
typedef TYPE_7__ BitmapHeapScanState ;


 int BM_INITIAL ;
 int ConditionVariableInit (int *) ;
 int SerializeSnapshot (int ,int ) ;
 int SpinLockInit (int *) ;
 TYPE_5__* shm_toc_allocate (int ,int ) ;
 int shm_toc_insert (int ,int ,TYPE_5__*) ;

void
ExecBitmapHeapInitializeDSM(BitmapHeapScanState *node,
       ParallelContext *pcxt)
{
 ParallelBitmapHeapState *pstate;
 EState *estate = node->ss.ps.state;
 dsa_area *dsa = node->ss.ps.state->es_query_dsa;


 if (dsa == ((void*)0))
  return;

 pstate = shm_toc_allocate(pcxt->toc, node->pscan_len);

 pstate->tbmiterator = 0;
 pstate->prefetch_iterator = 0;


 SpinLockInit(&pstate->mutex);
 pstate->prefetch_pages = 0;
 pstate->prefetch_target = 0;
 pstate->state = BM_INITIAL;

 ConditionVariableInit(&pstate->cv);
 SerializeSnapshot(estate->es_snapshot, pstate->phs_snapshot_data);

 shm_toc_insert(pcxt->toc, node->ss.ps.plan->plan_node_id, pstate);
 node->pstate = pstate;
}
