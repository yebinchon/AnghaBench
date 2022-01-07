
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int Tuplesortstate ;
struct TYPE_6__ {int ps_ResultTupleSlot; } ;
struct TYPE_7__ {TYPE_1__ ps; int ss_ScanTupleSlot; } ;
struct TYPE_8__ {int * tuplesortstate; TYPE_2__ ss; } ;
typedef TYPE_3__ SortState ;


 int ExecClearTuple (int ) ;
 int ExecEndNode (int ) ;
 int SO1_printf (char*,char*) ;
 int outerPlanState (TYPE_3__*) ;
 int tuplesort_end (int *) ;

void
ExecEndSort(SortState *node)
{
 SO1_printf("ExecEndSort: %s\n",
      "shutting down sort node");




 ExecClearTuple(node->ss.ss_ScanTupleSlot);

 ExecClearTuple(node->ss.ps.ps_ResultTupleSlot);




 if (node->tuplesortstate != ((void*)0))
  tuplesort_end((Tuplesortstate *) node->tuplesortstate);
 node->tuplesortstate = ((void*)0);




 ExecEndNode(outerPlanState(node));

 SO1_printf("ExecEndSort: %s\n",
      "sort node shutdown");
}
