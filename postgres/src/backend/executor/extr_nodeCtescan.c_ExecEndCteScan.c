
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ps_ResultTupleSlot; } ;
struct TYPE_5__ {scalar_t__ ss_ScanTupleSlot; TYPE_3__ ps; } ;
struct TYPE_6__ {int * cte_table; struct TYPE_6__* leader; TYPE_1__ ss; } ;
typedef TYPE_2__ CteScanState ;


 int ExecClearTuple (scalar_t__) ;
 int ExecFreeExprContext (TYPE_3__*) ;
 int tuplestore_end (int *) ;

void
ExecEndCteScan(CteScanState *node)
{



 ExecFreeExprContext(&node->ss.ps);




 if (node->ss.ps.ps_ResultTupleSlot)
  ExecClearTuple(node->ss.ps.ps_ResultTupleSlot);
 ExecClearTuple(node->ss.ss_ScanTupleSlot);




 if (node->leader == node)
 {
  tuplestore_end(node->cte_table);
  node->cte_table = ((void*)0);
 }
}
