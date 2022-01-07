
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {int xs_want_itup; } ;
struct TYPE_11__ {TYPE_1__* plan; } ;
struct TYPE_12__ {int ss_currentRelation; TYPE_2__ ps; } ;
struct TYPE_14__ {scalar_t__ ioss_NumRuntimeKeys; int ioss_NumOrderByKeys; int ioss_OrderByKeys; int ioss_NumScanKeys; int ioss_ScanKeys; TYPE_6__* ioss_ScanDesc; scalar_t__ ioss_RuntimeKeysReady; int ioss_RelationDesc; TYPE_3__ ss; } ;
struct TYPE_13__ {int toc; } ;
struct TYPE_10__ {int plan_node_id; } ;
typedef TYPE_4__ ParallelWorkerContext ;
typedef int ParallelIndexScanDesc ;
typedef TYPE_5__ IndexOnlyScanState ;


 TYPE_6__* index_beginscan_parallel (int ,int ,int ,int ,int ) ;
 int index_rescan (TYPE_6__*,int ,int ,int ,int ) ;
 int shm_toc_lookup (int ,int ,int) ;

void
ExecIndexOnlyScanInitializeWorker(IndexOnlyScanState *node,
          ParallelWorkerContext *pwcxt)
{
 ParallelIndexScanDesc piscan;

 piscan = shm_toc_lookup(pwcxt->toc, node->ss.ps.plan->plan_node_id, 0);
 node->ioss_ScanDesc =
  index_beginscan_parallel(node->ss.ss_currentRelation,
         node->ioss_RelationDesc,
         node->ioss_NumScanKeys,
         node->ioss_NumOrderByKeys,
         piscan);
 node->ioss_ScanDesc->xs_want_itup = 1;





 if (node->ioss_NumRuntimeKeys == 0 || node->ioss_RuntimeKeysReady)
  index_rescan(node->ioss_ScanDesc,
      node->ioss_ScanKeys, node->ioss_NumScanKeys,
      node->ioss_OrderByKeys, node->ioss_NumOrderByKeys);
}
