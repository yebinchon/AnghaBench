
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_14__ {int * ecxt_scantuple; int * ecxt_outertuple; int * ecxt_innertuple; } ;
struct TYPE_10__ {int attnum; int vartype; } ;
struct TYPE_11__ {TYPE_1__ var; } ;
struct TYPE_13__ {TYPE_2__ d; } ;
struct TYPE_12__ {int steps_len; TYPE_4__* steps; } ;
typedef TYPE_3__ ExprState ;
typedef TYPE_4__ ExprEvalStep ;
typedef TYPE_5__ ExprContext ;


 int CheckVarSlotCompatibility (int *,int,int ) ;



 int ExecEvalStepOp (TYPE_3__*,TYPE_4__*) ;

void
CheckExprStillValid(ExprState *state, ExprContext *econtext)
{
 int i = 0;
 TupleTableSlot *innerslot;
 TupleTableSlot *outerslot;
 TupleTableSlot *scanslot;

 innerslot = econtext->ecxt_innertuple;
 outerslot = econtext->ecxt_outertuple;
 scanslot = econtext->ecxt_scantuple;

 for (i = 0; i < state->steps_len; i++)
 {
  ExprEvalStep *op = &state->steps[i];

  switch (ExecEvalStepOp(state, op))
  {
   case 130:
    {
     int attnum = op->d.var.attnum;

     CheckVarSlotCompatibility(innerslot, attnum + 1, op->d.var.vartype);
     break;
    }

   case 129:
    {
     int attnum = op->d.var.attnum;

     CheckVarSlotCompatibility(outerslot, attnum + 1, op->d.var.vartype);
     break;
    }

   case 128:
    {
     int attnum = op->d.var.attnum;

     CheckVarSlotCompatibility(scanslot, attnum + 1, op->d.var.vartype);
     break;
    }
   default:
    break;
  }
 }
}
