
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int const TupleTableSlotOps ;
typedef int * TupleDesc ;
struct TYPE_14__ {int fixed; int const* kind; int * known_desc; } ;
struct TYPE_15__ {TYPE_1__ fetch; } ;
struct TYPE_18__ {scalar_t__ opcode; TYPE_2__ d; } ;
struct TYPE_17__ {TYPE_3__* parent; } ;
struct TYPE_16__ {int scanopsfixed; scalar_t__ scanopsset; int const* scanops; int * scandesc; int const* outerops; scalar_t__ outeropsset; int outeropsfixed; int const* innerops; scalar_t__ inneropsset; int inneropsfixed; } ;
typedef TYPE_3__ PlanState ;
typedef TYPE_4__ ExprState ;
typedef TYPE_5__ ExprEvalStep ;
typedef scalar_t__ ExprEvalOp ;


 int Assert (int) ;
 scalar_t__ EEOP_INNER_FETCHSOME ;
 scalar_t__ EEOP_OUTER_FETCHSOME ;
 scalar_t__ EEOP_SCAN_FETCHSOME ;
 int const* ExecGetResultSlotOps (TYPE_3__*,int*) ;
 int * ExecGetResultType (TYPE_3__*) ;
 int const TTSOpsVirtual ;
 TYPE_3__* innerPlanState (TYPE_3__*) ;
 TYPE_3__* outerPlanState (TYPE_3__*) ;

__attribute__((used)) static bool
ExecComputeSlotInfo(ExprState *state, ExprEvalStep *op)
{
 PlanState *parent = state->parent;
 TupleDesc desc = ((void*)0);
 const TupleTableSlotOps *tts_ops = ((void*)0);
 bool isfixed = 0;
 ExprEvalOp opcode = op->opcode;

 Assert(opcode == EEOP_INNER_FETCHSOME ||
     opcode == EEOP_OUTER_FETCHSOME ||
     opcode == EEOP_SCAN_FETCHSOME);

 if (op->d.fetch.known_desc != ((void*)0))
 {
  desc = op->d.fetch.known_desc;
  tts_ops = op->d.fetch.kind;
  isfixed = op->d.fetch.kind != ((void*)0);
 }
 else if (!parent)
 {
  isfixed = 0;
 }
 else if (opcode == EEOP_INNER_FETCHSOME)
 {
  PlanState *is = innerPlanState(parent);

  if (parent->inneropsset && !parent->inneropsfixed)
  {
   isfixed = 0;
  }
  else if (parent->inneropsset && parent->innerops)
  {
   isfixed = 1;
   tts_ops = parent->innerops;
   desc = ExecGetResultType(is);
  }
  else if (is)
  {
   tts_ops = ExecGetResultSlotOps(is, &isfixed);
   desc = ExecGetResultType(is);
  }
 }
 else if (opcode == EEOP_OUTER_FETCHSOME)
 {
  PlanState *os = outerPlanState(parent);

  if (parent->outeropsset && !parent->outeropsfixed)
  {
   isfixed = 0;
  }
  else if (parent->outeropsset && parent->outerops)
  {
   isfixed = 1;
   tts_ops = parent->outerops;
   desc = ExecGetResultType(os);
  }
  else if (os)
  {
   tts_ops = ExecGetResultSlotOps(os, &isfixed);
   desc = ExecGetResultType(os);
  }
 }
 else if (opcode == EEOP_SCAN_FETCHSOME)
 {
  desc = parent->scandesc;

  if (parent && parent->scanops)
   tts_ops = parent->scanops;

  if (parent->scanopsset)
   isfixed = parent->scanopsfixed;
 }

 if (isfixed && desc != ((void*)0) && tts_ops != ((void*)0))
 {
  op->d.fetch.fixed = 1;
  op->d.fetch.kind = tts_ops;
  op->d.fetch.known_desc = desc;
 }
 else
 {
  op->d.fetch.fixed = 0;
  op->d.fetch.kind = ((void*)0);
  op->d.fetch.known_desc = ((void*)0);
 }


 if (op->d.fetch.fixed && op->d.fetch.kind == &TTSOpsVirtual)
  return 0;

 return 1;
}
