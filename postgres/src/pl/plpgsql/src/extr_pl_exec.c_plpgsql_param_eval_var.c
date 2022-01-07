
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_18__ {TYPE_4__* ecxt_param_list_info; } ;
struct TYPE_12__ {int paramid; scalar_t__ paramtype; } ;
struct TYPE_13__ {TYPE_2__ cparam; } ;
struct TYPE_17__ {TYPE_3__ d; int * resnull; int * resvalue; } ;
struct TYPE_16__ {int ndatums; scalar_t__* datums; } ;
struct TYPE_15__ {scalar_t__ dtype; TYPE_1__* datatype; int isnull; int value; } ;
struct TYPE_14__ {scalar_t__ paramFetchArg; } ;
struct TYPE_11__ {scalar_t__ typoid; } ;
typedef TYPE_4__* ParamListInfo ;
typedef TYPE_5__ PLpgSQL_var ;
typedef TYPE_6__ PLpgSQL_execstate ;
typedef int ExprState ;
typedef TYPE_7__ ExprEvalStep ;
typedef TYPE_8__ ExprContext ;


 int Assert (int) ;
 scalar_t__ PLPGSQL_DTYPE_VAR ;

__attribute__((used)) static void
plpgsql_param_eval_var(ExprState *state, ExprEvalStep *op,
        ExprContext *econtext)
{
 ParamListInfo params;
 PLpgSQL_execstate *estate;
 int dno = op->d.cparam.paramid - 1;
 PLpgSQL_var *var;


 params = econtext->ecxt_param_list_info;
 estate = (PLpgSQL_execstate *) params->paramFetchArg;
 Assert(dno >= 0 && dno < estate->ndatums);


 var = (PLpgSQL_var *) estate->datums[dno];
 Assert(var->dtype == PLPGSQL_DTYPE_VAR);


 *op->resvalue = var->value;
 *op->resnull = var->isnull;


 Assert(var->datatype->typoid == op->d.cparam.paramtype);
}
