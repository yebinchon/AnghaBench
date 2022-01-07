
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int es_snapshot; } ;
struct TYPE_10__ {TYPE_1__* plan; TYPE_6__* state; } ;
struct TYPE_11__ {int ss_currentRelation; TYPE_2__ ps; } ;
struct TYPE_13__ {scalar_t__ iss_NumRuntimeKeys; int iss_NumOrderByKeys; int iss_OrderByKeys; int iss_NumScanKeys; int iss_ScanKeys; int iss_ScanDesc; scalar_t__ iss_RuntimeKeysReady; int iss_RelationDesc; TYPE_3__ ss; int iss_PscanLen; } ;
struct TYPE_12__ {int toc; } ;
struct TYPE_9__ {int plan_node_id; } ;
typedef int ParallelIndexScanDesc ;
typedef TYPE_4__ ParallelContext ;
typedef TYPE_5__ IndexScanState ;
typedef TYPE_6__ EState ;


 int index_beginscan_parallel (int ,int ,int ,int ,int ) ;
 int index_parallelscan_initialize (int ,int ,int ,int ) ;
 int index_rescan (int ,int ,int ,int ,int ) ;
 int shm_toc_allocate (int ,int ) ;
 int shm_toc_insert (int ,int ,int ) ;

void
ExecIndexScanInitializeDSM(IndexScanState *node,
         ParallelContext *pcxt)
{
 EState *estate = node->ss.ps.state;
 ParallelIndexScanDesc piscan;

 piscan = shm_toc_allocate(pcxt->toc, node->iss_PscanLen);
 index_parallelscan_initialize(node->ss.ss_currentRelation,
          node->iss_RelationDesc,
          estate->es_snapshot,
          piscan);
 shm_toc_insert(pcxt->toc, node->ss.ps.plan->plan_node_id, piscan);
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
