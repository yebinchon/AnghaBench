
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int toc; } ;
struct TYPE_9__ {TYPE_1__* plan; } ;
struct TYPE_10__ {int ss_currentRelation; int ss_currentScanDesc; TYPE_2__ ps; } ;
struct TYPE_11__ {TYPE_3__ ss; } ;
struct TYPE_8__ {int plan_node_id; } ;
typedef TYPE_4__ SeqScanState ;
typedef TYPE_5__ ParallelWorkerContext ;
typedef int ParallelTableScanDesc ;


 int shm_toc_lookup (int ,int ,int) ;
 int table_beginscan_parallel (int ,int ) ;

void
ExecSeqScanInitializeWorker(SeqScanState *node,
       ParallelWorkerContext *pwcxt)
{
 ParallelTableScanDesc pscan;

 pscan = shm_toc_lookup(pwcxt->toc, node->ss.ps.plan->plan_node_id, 0);
 node->ss.ss_currentScanDesc =
  table_beginscan_parallel(node->ss.ss_currentRelation, pscan);
}
