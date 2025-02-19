
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {int (* ReInitializeDSMForeignScan ) (TYPE_5__*,TYPE_4__*,void*) ;} ;
struct TYPE_12__ {TYPE_1__* plan; } ;
struct TYPE_13__ {TYPE_2__ ps; } ;
struct TYPE_15__ {TYPE_3__ ss; TYPE_6__* fdwroutine; } ;
struct TYPE_14__ {int toc; } ;
struct TYPE_11__ {int plan_node_id; } ;
typedef TYPE_4__ ParallelContext ;
typedef TYPE_5__ ForeignScanState ;
typedef TYPE_6__ FdwRoutine ;


 void* shm_toc_lookup (int ,int,int) ;
 int stub1 (TYPE_5__*,TYPE_4__*,void*) ;

void
ExecForeignScanReInitializeDSM(ForeignScanState *node, ParallelContext *pcxt)
{
 FdwRoutine *fdwroutine = node->fdwroutine;

 if (fdwroutine->ReInitializeDSMForeignScan)
 {
  int plan_node_id = node->ss.ps.plan->plan_node_id;
  void *coordinate;

  coordinate = shm_toc_lookup(pcxt->toc, plan_node_id, 0);
  fdwroutine->ReInitializeDSMForeignScan(node, pcxt, coordinate);
 }
}
