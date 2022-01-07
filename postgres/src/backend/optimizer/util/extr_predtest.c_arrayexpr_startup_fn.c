
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int elements; } ;
struct TYPE_8__ {int type; } ;
struct TYPE_9__ {int opretset; int args; int inputcollid; int opcollid; int opresulttype; int opfuncid; int opno; TYPE_1__ xpr; } ;
struct TYPE_12__ {int next; TYPE_2__ opexpr; } ;
struct TYPE_11__ {int state_list; void* state; } ;
struct TYPE_10__ {int args; int inputcollid; int opfuncid; int opno; } ;
typedef TYPE_3__ ScalarArrayOpExpr ;
typedef TYPE_4__* PredIterInfo ;
typedef int Node ;
typedef TYPE_5__ ArrayExprIterState ;
typedef TYPE_6__ ArrayExpr ;


 int BOOLOID ;
 int InvalidOid ;
 int T_OpExpr ;
 int list_copy (int ) ;
 int list_head (int ) ;
 scalar_t__ lsecond (int ) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static void
arrayexpr_startup_fn(Node *clause, PredIterInfo info)
{
 ScalarArrayOpExpr *saop = (ScalarArrayOpExpr *) clause;
 ArrayExprIterState *state;
 ArrayExpr *arrayexpr;


 state = (ArrayExprIterState *) palloc(sizeof(ArrayExprIterState));
 info->state = (void *) state;


 state->opexpr.xpr.type = T_OpExpr;
 state->opexpr.opno = saop->opno;
 state->opexpr.opfuncid = saop->opfuncid;
 state->opexpr.opresulttype = BOOLOID;
 state->opexpr.opretset = 0;
 state->opexpr.opcollid = InvalidOid;
 state->opexpr.inputcollid = saop->inputcollid;
 state->opexpr.args = list_copy(saop->args);


 arrayexpr = (ArrayExpr *) lsecond(saop->args);
 info->state_list = arrayexpr->elements;
 state->next = list_head(arrayexpr->elements);
}
