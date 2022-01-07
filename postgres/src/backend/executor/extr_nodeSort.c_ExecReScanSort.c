
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int Tuplesortstate ;
struct TYPE_12__ {int * chgParam; } ;
struct TYPE_10__ {int ps_ResultTupleSlot; } ;
struct TYPE_9__ {TYPE_2__ ps; } ;
struct TYPE_11__ {int sort_Done; scalar_t__ bounded; scalar_t__ bounded_Done; scalar_t__ bound; scalar_t__ bound_Done; int * tuplesortstate; int randomAccess; TYPE_1__ ss; } ;
typedef TYPE_3__ SortState ;
typedef TYPE_4__ PlanState ;


 int ExecClearTuple (int ) ;
 int ExecReScan (TYPE_4__*) ;
 TYPE_4__* outerPlanState (TYPE_3__*) ;
 int tuplesort_end (int *) ;
 int tuplesort_rescan (int *) ;

void
ExecReScanSort(SortState *node)
{
 PlanState *outerPlan = outerPlanState(node);






 if (!node->sort_Done)
  return;


 ExecClearTuple(node->ss.ps.ps_ResultTupleSlot);
 if (outerPlan->chgParam != ((void*)0) ||
  node->bounded != node->bounded_Done ||
  node->bound != node->bound_Done ||
  !node->randomAccess)
 {
  node->sort_Done = 0;
  tuplesort_end((Tuplesortstate *) node->tuplesortstate);
  node->tuplesortstate = ((void*)0);





  if (outerPlan->chgParam == ((void*)0))
   ExecReScan(outerPlan);
 }
 else
  tuplesort_rescan((Tuplesortstate *) node->tuplesortstate);
}
