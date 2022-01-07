
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int ps_ResultTupleSlot; } ;
struct TYPE_10__ {TYPE_1__ ps; } ;
struct TYPE_12__ {int eflags; int eof_underlying; int * tuplestorestate; TYPE_2__ ss; } ;
struct TYPE_11__ {int * chgParam; } ;
typedef TYPE_3__ PlanState ;
typedef TYPE_4__ MaterialState ;


 int EXEC_FLAG_REWIND ;
 int ExecClearTuple (int ) ;
 int ExecReScan (TYPE_3__*) ;
 TYPE_3__* outerPlanState (TYPE_4__*) ;
 int tuplestore_end (int *) ;
 int tuplestore_rescan (int *) ;

void
ExecReScanMaterial(MaterialState *node)
{
 PlanState *outerPlan = outerPlanState(node);

 ExecClearTuple(node->ss.ps.ps_ResultTupleSlot);

 if (node->eflags != 0)
 {





  if (!node->tuplestorestate)
   return;
  if (outerPlan->chgParam != ((void*)0) ||
   (node->eflags & EXEC_FLAG_REWIND) == 0)
  {
   tuplestore_end(node->tuplestorestate);
   node->tuplestorestate = ((void*)0);
   if (outerPlan->chgParam == ((void*)0))
    ExecReScan(outerPlan);
   node->eof_underlying = 0;
  }
  else
   tuplestore_rescan(node->tuplestorestate);
 }
 else
 {






  if (outerPlan->chgParam == ((void*)0))
   ExecReScan(outerPlan);
  node->eof_underlying = 0;
 }
}
