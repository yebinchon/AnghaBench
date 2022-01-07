
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


struct TYPE_17__ {int xs_want_itup; } ;
struct TYPE_16__ {int es_snapshot; } ;
struct TYPE_12__ {TYPE_1__* plan; TYPE_6__* state; } ;
struct TYPE_13__ {int ss_currentRelation; TYPE_2__ ps; } ;
struct TYPE_15__ {scalar_t__ ioss_NumRuntimeKeys; int ioss_NumOrderByKeys; int ioss_OrderByKeys; int ioss_NumScanKeys; int ioss_ScanKeys; TYPE_7__* ioss_ScanDesc; scalar_t__ ioss_RuntimeKeysReady; int ioss_VMBuffer; int ioss_RelationDesc; TYPE_3__ ss; int ioss_PscanLen; } ;
struct TYPE_14__ {int toc; } ;
struct TYPE_11__ {int plan_node_id; } ;
typedef int ParallelIndexScanDesc ;
typedef TYPE_4__ ParallelContext ;
typedef TYPE_5__ IndexOnlyScanState ;
typedef TYPE_6__ EState ;


 int InvalidBuffer ;
 TYPE_7__* index_beginscan_parallel (int ,int ,int ,int ,int ) ;
 int index_parallelscan_initialize (int ,int ,int ,int ) ;
 int index_rescan (TYPE_7__*,int ,int ,int ,int ) ;
 int shm_toc_allocate (int ,int ) ;
 int shm_toc_insert (int ,int ,int ) ;

void
ExecIndexOnlyScanInitializeDSM(IndexOnlyScanState *node,
          ParallelContext *pcxt)
{
 EState *estate = node->ss.ps.state;
 ParallelIndexScanDesc piscan;

 piscan = shm_toc_allocate(pcxt->toc, node->ioss_PscanLen);
 index_parallelscan_initialize(node->ss.ss_currentRelation,
          node->ioss_RelationDesc,
          estate->es_snapshot,
          piscan);
 shm_toc_insert(pcxt->toc, node->ss.ps.plan->plan_node_id, piscan);
 node->ioss_ScanDesc =
  index_beginscan_parallel(node->ss.ss_currentRelation,
         node->ioss_RelationDesc,
         node->ioss_NumScanKeys,
         node->ioss_NumOrderByKeys,
         piscan);
 node->ioss_ScanDesc->xs_want_itup = 1;
 node->ioss_VMBuffer = InvalidBuffer;





 if (node->ioss_NumRuntimeKeys == 0 || node->ioss_RuntimeKeysReady)
  index_rescan(node->ioss_ScanDesc,
      node->ioss_ScanKeys, node->ioss_NumScanKeys,
      node->ioss_OrderByKeys, node->ioss_NumOrderByKeys);
}
