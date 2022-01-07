
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * ps_ExprContext; } ;
struct TYPE_7__ {int noCount; int lstate; int * subSlot; scalar_t__ position; void* count; scalar_t__ limitCount; void* offset; scalar_t__ limitOffset; TYPE_1__ ps; } ;
typedef TYPE_2__ LimitState ;
typedef int ExprContext ;
typedef int Datum ;


 void* DatumGetInt64 (int ) ;
 int ERRCODE_INVALID_ROW_COUNT_IN_LIMIT_CLAUSE ;
 int ERRCODE_INVALID_ROW_COUNT_IN_RESULT_OFFSET_CLAUSE ;
 int ERROR ;
 int ExecEvalExprSwitchContext (scalar_t__,int *,int*) ;
 int ExecSetTupleBound (int ,int ) ;
 int LIMIT_RESCAN ;
 int compute_tuples_needed (TYPE_2__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int outerPlanState (TYPE_2__*) ;

__attribute__((used)) static void
recompute_limits(LimitState *node)
{
 ExprContext *econtext = node->ps.ps_ExprContext;
 Datum val;
 bool isNull;

 if (node->limitOffset)
 {
  val = ExecEvalExprSwitchContext(node->limitOffset,
          econtext,
          &isNull);

  if (isNull)
   node->offset = 0;
  else
  {
   node->offset = DatumGetInt64(val);
   if (node->offset < 0)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_ROW_COUNT_IN_RESULT_OFFSET_CLAUSE),
       errmsg("OFFSET must not be negative")));
  }
 }
 else
 {

  node->offset = 0;
 }

 if (node->limitCount)
 {
  val = ExecEvalExprSwitchContext(node->limitCount,
          econtext,
          &isNull);

  if (isNull)
  {
   node->count = 0;
   node->noCount = 1;
  }
  else
  {
   node->count = DatumGetInt64(val);
   if (node->count < 0)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_ROW_COUNT_IN_LIMIT_CLAUSE),
       errmsg("LIMIT must not be negative")));
   node->noCount = 0;
  }
 }
 else
 {

  node->count = 0;
  node->noCount = 1;
 }


 node->position = 0;
 node->subSlot = ((void*)0);


 node->lstate = LIMIT_RESCAN;







 ExecSetTupleBound(compute_tuples_needed(node), outerPlanState(node));
}
