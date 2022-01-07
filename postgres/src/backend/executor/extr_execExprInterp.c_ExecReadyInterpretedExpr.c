
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ value; } ;
struct TYPE_7__ {TYPE_1__ casetest; } ;
struct TYPE_9__ {scalar_t__ opcode; TYPE_2__ d; } ;
struct TYPE_8__ {int steps_len; int flags; void* evalfunc_private; TYPE_4__* steps; int evalfunc; } ;
typedef TYPE_3__ ExprState ;
typedef TYPE_4__ ExprEvalStep ;
typedef scalar_t__ ExprEvalOp ;


 int Assert (int) ;
 scalar_t__ EEOP_ASSIGN_INNER_VAR ;
 scalar_t__ EEOP_ASSIGN_OUTER_VAR ;
 scalar_t__ EEOP_ASSIGN_SCAN_VAR ;
 scalar_t__ EEOP_CASE_TESTVAL ;
 scalar_t__ EEOP_CONST ;
 scalar_t__ EEOP_DONE ;
 scalar_t__ EEOP_FUNCEXPR_STRICT ;
 scalar_t__ EEOP_INNER_FETCHSOME ;
 scalar_t__ EEOP_INNER_VAR ;
 scalar_t__ EEOP_OUTER_FETCHSOME ;
 scalar_t__ EEOP_OUTER_VAR ;
 scalar_t__ EEOP_SCAN_FETCHSOME ;
 scalar_t__ EEOP_SCAN_VAR ;
 int EEO_FLAG_DIRECT_THREADED ;
 int EEO_FLAG_INTERPRETER_INITIALIZED ;
 scalar_t__ EEO_OPCODE (scalar_t__) ;
 int ExecInitInterpreter () ;
 scalar_t__ ExecInterpExpr ;
 int ExecInterpExprStillValid ;
 scalar_t__ ExecJustApplyFuncToCase ;
 scalar_t__ ExecJustAssignInnerVar ;
 scalar_t__ ExecJustAssignInnerVarVirt ;
 scalar_t__ ExecJustAssignOuterVar ;
 scalar_t__ ExecJustAssignOuterVarVirt ;
 scalar_t__ ExecJustAssignScanVar ;
 scalar_t__ ExecJustAssignScanVarVirt ;
 scalar_t__ ExecJustConst ;
 scalar_t__ ExecJustInnerVar ;
 scalar_t__ ExecJustInnerVarVirt ;
 scalar_t__ ExecJustOuterVar ;
 scalar_t__ ExecJustOuterVarVirt ;
 scalar_t__ ExecJustScanVar ;
 scalar_t__ ExecJustScanVarVirt ;

void
ExecReadyInterpretedExpr(ExprState *state)
{

 ExecInitInterpreter();


 Assert(state->steps_len >= 1);
 Assert(state->steps[state->steps_len - 1].opcode == EEOP_DONE);






 if (state->flags & EEO_FLAG_INTERPRETER_INITIALIZED)
  return;







 state->evalfunc = ExecInterpExprStillValid;


 Assert((state->flags & EEO_FLAG_DIRECT_THREADED) == 0);






 state->flags |= EEO_FLAG_INTERPRETER_INITIALIZED;






 if (state->steps_len == 3)
 {
  ExprEvalOp step0 = state->steps[0].opcode;
  ExprEvalOp step1 = state->steps[1].opcode;

  if (step0 == EEOP_INNER_FETCHSOME &&
   step1 == EEOP_INNER_VAR)
  {
   state->evalfunc_private = (void *) ExecJustInnerVar;
   return;
  }
  else if (step0 == EEOP_OUTER_FETCHSOME &&
     step1 == EEOP_OUTER_VAR)
  {
   state->evalfunc_private = (void *) ExecJustOuterVar;
   return;
  }
  else if (step0 == EEOP_SCAN_FETCHSOME &&
     step1 == EEOP_SCAN_VAR)
  {
   state->evalfunc_private = (void *) ExecJustScanVar;
   return;
  }
  else if (step0 == EEOP_INNER_FETCHSOME &&
     step1 == EEOP_ASSIGN_INNER_VAR)
  {
   state->evalfunc_private = (void *) ExecJustAssignInnerVar;
   return;
  }
  else if (step0 == EEOP_OUTER_FETCHSOME &&
     step1 == EEOP_ASSIGN_OUTER_VAR)
  {
   state->evalfunc_private = (void *) ExecJustAssignOuterVar;
   return;
  }
  else if (step0 == EEOP_SCAN_FETCHSOME &&
     step1 == EEOP_ASSIGN_SCAN_VAR)
  {
   state->evalfunc_private = (void *) ExecJustAssignScanVar;
   return;
  }
  else if (step0 == EEOP_CASE_TESTVAL &&
     step1 == EEOP_FUNCEXPR_STRICT &&
     state->steps[0].d.casetest.value)
  {
   state->evalfunc_private = (void *) ExecJustApplyFuncToCase;
   return;
  }
 }
 else if (state->steps_len == 2)
 {
  ExprEvalOp step0 = state->steps[0].opcode;

  if (step0 == EEOP_CONST)
  {
   state->evalfunc_private = (void *) ExecJustConst;
   return;
  }
  else if (step0 == EEOP_INNER_VAR)
  {
   state->evalfunc_private = (void *) ExecJustInnerVarVirt;
   return;
  }
  else if (step0 == EEOP_OUTER_VAR)
  {
   state->evalfunc_private = (void *) ExecJustOuterVarVirt;
   return;
  }
  else if (step0 == EEOP_SCAN_VAR)
  {
   state->evalfunc_private = (void *) ExecJustScanVarVirt;
   return;
  }
  else if (step0 == EEOP_ASSIGN_INNER_VAR)
  {
   state->evalfunc_private = (void *) ExecJustAssignInnerVarVirt;
   return;
  }
  else if (step0 == EEOP_ASSIGN_OUTER_VAR)
  {
   state->evalfunc_private = (void *) ExecJustAssignOuterVarVirt;
   return;
  }
  else if (step0 == EEOP_ASSIGN_SCAN_VAR)
  {
   state->evalfunc_private = (void *) ExecJustAssignScanVarVirt;
   return;
  }
 }
 state->evalfunc_private = (void *) ExecInterpExpr;
}
