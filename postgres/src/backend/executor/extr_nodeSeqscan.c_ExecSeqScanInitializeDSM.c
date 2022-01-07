
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
struct TYPE_13__ {int toc; } ;
struct TYPE_10__ {TYPE_1__* plan; TYPE_6__* state; } ;
struct TYPE_11__ {int ss_currentRelation; int ss_currentScanDesc; TYPE_2__ ps; } ;
struct TYPE_12__ {TYPE_3__ ss; int pscan_len; } ;
struct TYPE_9__ {int plan_node_id; } ;
typedef TYPE_4__ SeqScanState ;
typedef int ParallelTableScanDesc ;
typedef TYPE_5__ ParallelContext ;
typedef TYPE_6__ EState ;


 int shm_toc_allocate (int ,int ) ;
 int shm_toc_insert (int ,int ,int ) ;
 int table_beginscan_parallel (int ,int ) ;
 int table_parallelscan_initialize (int ,int ,int ) ;

void
ExecSeqScanInitializeDSM(SeqScanState *node,
       ParallelContext *pcxt)
{
 EState *estate = node->ss.ps.state;
 ParallelTableScanDesc pscan;

 pscan = shm_toc_allocate(pcxt->toc, node->pscan_len);
 table_parallelscan_initialize(node->ss.ss_currentRelation,
          pscan,
          estate->es_snapshot);
 shm_toc_insert(pcxt->toc, node->ss.ps.plan->plan_node_id, pscan);
 node->ss.ss_currentScanDesc =
  table_beginscan_parallel(node->ss.ss_currentRelation, pscan);
}
