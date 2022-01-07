
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int ss; TYPE_1__* fdwroutine; } ;
struct TYPE_10__ {int * chgParam; } ;
struct TYPE_9__ {int (* ReScanForeignScan ) (TYPE_3__*) ;} ;
typedef TYPE_2__ PlanState ;
typedef TYPE_3__ ForeignScanState ;


 int ExecReScan (TYPE_2__*) ;
 int ExecScanReScan (int *) ;
 TYPE_2__* outerPlanState (TYPE_3__*) ;
 int stub1 (TYPE_3__*) ;

void
ExecReScanForeignScan(ForeignScanState *node)
{
 PlanState *outerPlan = outerPlanState(node);

 node->fdwroutine->ReScanForeignScan(node);






 if (outerPlan != ((void*)0) && outerPlan->chgParam == ((void*)0))
  ExecReScan(outerPlan);

 ExecScanReScan(&node->ss);
}
