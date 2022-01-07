
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* plan; TYPE_1__* state; } ;
struct TYPE_14__ {int ss_currentScanDesc; TYPE_3__ ps; } ;
struct TYPE_17__ {TYPE_4__ ss; TYPE_6__* pstate; } ;
struct TYPE_16__ {int phs_snapshot_data; } ;
struct TYPE_15__ {int toc; } ;
struct TYPE_12__ {int plan_node_id; } ;
struct TYPE_11__ {int * es_query_dsa; } ;
typedef int Snapshot ;
typedef TYPE_5__ ParallelWorkerContext ;
typedef TYPE_6__ ParallelBitmapHeapState ;
typedef TYPE_7__ BitmapHeapScanState ;


 int Assert (int ) ;
 int RestoreSnapshot (int ) ;
 TYPE_6__* shm_toc_lookup (int ,int ,int) ;
 int table_scan_update_snapshot (int ,int ) ;

void
ExecBitmapHeapInitializeWorker(BitmapHeapScanState *node,
          ParallelWorkerContext *pwcxt)
{
 ParallelBitmapHeapState *pstate;
 Snapshot snapshot;

 Assert(node->ss.ps.state->es_query_dsa != ((void*)0));

 pstate = shm_toc_lookup(pwcxt->toc, node->ss.ps.plan->plan_node_id, 0);
 node->pstate = pstate;

 snapshot = RestoreSnapshot(pstate->phs_snapshot_data);
 table_scan_update_snapshot(node->ss.ss_currentScanDesc, snapshot);
}
