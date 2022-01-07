
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int * chgParam; } ;
struct TYPE_13__ {scalar_t__ numCols; int wtParam; } ;
struct TYPE_11__ {scalar_t__ plan; } ;
struct TYPE_12__ {int recursing; int intermediate_empty; int intermediate_table; int working_table; int hashtable; scalar_t__ tableContext; TYPE_1__ ps; } ;
typedef TYPE_2__ RecursiveUnionState ;
typedef TYPE_3__ RecursiveUnion ;
typedef TYPE_4__ PlanState ;


 int ExecReScan (TYPE_4__*) ;
 int MemoryContextResetAndDeleteChildren (scalar_t__) ;
 int ResetTupleHashTable (int ) ;
 int * bms_add_member (int *,int ) ;
 TYPE_4__* innerPlanState (TYPE_2__*) ;
 TYPE_4__* outerPlanState (TYPE_2__*) ;
 int tuplestore_clear (int ) ;

void
ExecReScanRecursiveUnion(RecursiveUnionState *node)
{
 PlanState *outerPlan = outerPlanState(node);
 PlanState *innerPlan = innerPlanState(node);
 RecursiveUnion *plan = (RecursiveUnion *) node->ps.plan;





 innerPlan->chgParam = bms_add_member(innerPlan->chgParam, plan->wtParam);






 if (outerPlan->chgParam == ((void*)0))
  ExecReScan(outerPlan);


 if (node->tableContext)
  MemoryContextResetAndDeleteChildren(node->tableContext);


 if (plan->numCols > 0)
  ResetTupleHashTable(node->hashtable);


 node->recursing = 0;
 node->intermediate_empty = 1;
 tuplestore_clear(node->working_table);
 tuplestore_clear(node->intermediate_table);
}
