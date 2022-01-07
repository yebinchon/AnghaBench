
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int es_direction; } ;
struct TYPE_10__ {scalar_t__ subLinkType; scalar_t__ setParam; scalar_t__ useHashTable; } ;
struct TYPE_9__ {TYPE_1__* planstate; TYPE_3__* subplan; } ;
struct TYPE_8__ {TYPE_4__* state; } ;
typedef TYPE_2__ SubPlanState ;
typedef TYPE_3__ SubPlan ;
typedef int ScanDirection ;
typedef int ExprContext ;
typedef TYPE_4__ EState ;
typedef int Datum ;


 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ CTE_SUBLINK ;
 int ERROR ;
 int ExecHashSubPlan (TYPE_2__*,int *,int*) ;
 int ExecScanSubPlan (TYPE_2__*,int *,int*) ;
 int ForwardScanDirection ;
 scalar_t__ MULTIEXPR_SUBLINK ;
 scalar_t__ NIL ;
 int elog (int ,char*) ;

Datum
ExecSubPlan(SubPlanState *node,
   ExprContext *econtext,
   bool *isNull)
{
 SubPlan *subplan = node->subplan;
 EState *estate = node->planstate->state;
 ScanDirection dir = estate->es_direction;
 Datum retval;

 CHECK_FOR_INTERRUPTS();


 *isNull = 0;


 if (subplan->subLinkType == CTE_SUBLINK)
  elog(ERROR, "CTE subplans should not be executed via ExecSubPlan");
 if (subplan->setParam != NIL && subplan->subLinkType != MULTIEXPR_SUBLINK)
  elog(ERROR, "cannot set parent params from subquery");


 estate->es_direction = ForwardScanDirection;


 if (subplan->useHashTable)
  retval = ExecHashSubPlan(node, econtext, isNull);
 else
  retval = ExecScanSubPlan(node, econtext, isNull);


 estate->es_direction = dir;

 return retval;
}
