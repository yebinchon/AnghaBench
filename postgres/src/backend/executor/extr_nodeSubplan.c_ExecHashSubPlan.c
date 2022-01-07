
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_10__ {int * pi_exprContext; } ;
struct TYPE_9__ {int * chgParam; } ;
struct TYPE_8__ {scalar_t__ parParam; } ;
struct TYPE_7__ {scalar_t__ args; int cur_eq_funcs; int * hashtable; scalar_t__ havehashrows; int * hashnulls; scalar_t__ havenullrows; int lhs_hash_funcs; int cur_eq_comp; TYPE_5__* projLeft; TYPE_3__* planstate; TYPE_2__* subplan; } ;
typedef TYPE_1__ SubPlanState ;
typedef TYPE_2__ SubPlan ;
typedef TYPE_3__ PlanState ;
typedef int ExprContext ;
typedef int Datum ;


 int BoolGetDatum (int) ;
 int ERROR ;
 int ExecClearTuple (int *) ;
 int * ExecProject (TYPE_5__*) ;
 int * FindTupleHashEntry (int *,int *,int ,int ) ;
 scalar_t__ NIL ;
 int buildSubPlanHash (TYPE_1__*,int *) ;
 int elog (int ,char*) ;
 scalar_t__ findPartialMatch (int *,int *,int ) ;
 scalar_t__ slotAllNulls (int *) ;
 scalar_t__ slotNoNulls (int *) ;

__attribute__((used)) static Datum
ExecHashSubPlan(SubPlanState *node,
    ExprContext *econtext,
    bool *isNull)
{
 SubPlan *subplan = node->subplan;
 PlanState *planstate = node->planstate;
 TupleTableSlot *slot;


 if (subplan->parParam != NIL || node->args != NIL)
  elog(ERROR, "hashed subplan with direct correlation not supported");





 if (node->hashtable == ((void*)0) || planstate->chgParam != ((void*)0))
  buildSubPlanHash(node, econtext);





 *isNull = 0;
 if (!node->havehashrows && !node->havenullrows)
  return BoolGetDatum(0);





 node->projLeft->pi_exprContext = econtext;
 slot = ExecProject(node->projLeft);
 if (slotNoNulls(slot))
 {
  if (node->havehashrows &&
   FindTupleHashEntry(node->hashtable,
          slot,
          node->cur_eq_comp,
          node->lhs_hash_funcs) != ((void*)0))
  {
   ExecClearTuple(slot);
   return BoolGetDatum(1);
  }
  if (node->havenullrows &&
   findPartialMatch(node->hashnulls, slot, node->cur_eq_funcs))
  {
   ExecClearTuple(slot);
   *isNull = 1;
   return BoolGetDatum(0);
  }
  ExecClearTuple(slot);
  return BoolGetDatum(0);
 }
 if (node->hashnulls == ((void*)0))
 {
  ExecClearTuple(slot);
  return BoolGetDatum(0);
 }
 if (slotAllNulls(slot))
 {
  ExecClearTuple(slot);
  *isNull = 1;
  return BoolGetDatum(0);
 }

 if (node->havenullrows &&
  findPartialMatch(node->hashnulls, slot, node->cur_eq_funcs))
 {
  ExecClearTuple(slot);
  *isNull = 1;
  return BoolGetDatum(0);
 }
 if (node->havehashrows &&
  findPartialMatch(node->hashtable, slot, node->cur_eq_funcs))
 {
  ExecClearTuple(slot);
  *isNull = 1;
  return BoolGetDatum(0);
 }
 ExecClearTuple(slot);
 return BoolGetDatum(0);
}
