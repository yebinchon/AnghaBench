
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ ps_ResultTupleSlot; scalar_t__ plan; } ;
struct TYPE_13__ {scalar_t__ operation; } ;
struct TYPE_11__ {scalar_t__ ss_ScanTupleSlot; TYPE_8__ ps; } ;
struct TYPE_12__ {TYPE_2__ ss; TYPE_1__* fdwroutine; } ;
struct TYPE_10__ {int (* EndForeignScan ) (TYPE_3__*) ;int (* EndDirectModify ) (TYPE_3__*) ;} ;
typedef TYPE_3__ ForeignScanState ;
typedef TYPE_4__ ForeignScan ;


 scalar_t__ CMD_SELECT ;
 int ExecClearTuple (scalar_t__) ;
 int ExecEndNode (scalar_t__) ;
 int ExecFreeExprContext (TYPE_8__*) ;
 scalar_t__ outerPlanState (TYPE_3__*) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;

void
ExecEndForeignScan(ForeignScanState *node)
{
 ForeignScan *plan = (ForeignScan *) node->ss.ps.plan;


 if (plan->operation != CMD_SELECT)
  node->fdwroutine->EndDirectModify(node);
 else
  node->fdwroutine->EndForeignScan(node);


 if (outerPlanState(node))
  ExecEndNode(outerPlanState(node));


 ExecFreeExprContext(&node->ss.ps);


 if (node->ss.ps.ps_ResultTupleSlot)
  ExecClearTuple(node->ss.ps.ps_ResultTupleSlot);
 ExecClearTuple(node->ss.ss_ScanTupleSlot);
}
