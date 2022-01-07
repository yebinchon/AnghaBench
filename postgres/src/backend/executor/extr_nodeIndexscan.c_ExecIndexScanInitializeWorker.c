
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* plan; } ;
struct TYPE_8__ {int ss_currentRelation; TYPE_2__ ps; } ;
struct TYPE_12__ {scalar_t__ iss_NumRuntimeKeys; int iss_NumOrderByKeys; int iss_OrderByKeys; int iss_NumScanKeys; int iss_ScanKeys; int iss_ScanDesc; scalar_t__ iss_RuntimeKeysReady; int iss_RelationDesc; TYPE_1__ ss; } ;
struct TYPE_11__ {int toc; } ;
struct TYPE_10__ {int plan_node_id; } ;
typedef TYPE_4__ ParallelWorkerContext ;
typedef int ParallelIndexScanDesc ;
typedef TYPE_5__ IndexScanState ;


 int index_beginscan_parallel (int ,int ,int ,int ,int ) ;
 int index_rescan (int ,int ,int ,int ,int ) ;
 int shm_toc_lookup (int ,int ,int) ;

void
ExecIndexScanInitializeWorker(IndexScanState *node,
         ParallelWorkerContext *pwcxt)
{
 ParallelIndexScanDesc piscan;

 piscan = shm_toc_lookup(pwcxt->toc, node->ss.ps.plan->plan_node_id, 0);
 node->iss_ScanDesc =
  index_beginscan_parallel(node->ss.ss_currentRelation,
         node->iss_RelationDesc,
         node->iss_NumScanKeys,
         node->iss_NumOrderByKeys,
         piscan);





 if (node->iss_NumRuntimeKeys == 0 || node->iss_RuntimeKeysReady)
  index_rescan(node->iss_ScanDesc,
      node->iss_ScanKeys, node->iss_NumScanKeys,
      node->iss_OrderByKeys, node->iss_NumOrderByKeys);
}
