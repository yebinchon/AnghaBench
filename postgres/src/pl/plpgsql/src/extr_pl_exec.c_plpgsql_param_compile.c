
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_23__ {scalar_t__ dtype; } ;
struct TYPE_22__ {int ndatums; TYPE_9__** datums; } ;
struct TYPE_21__ {int rwparam; } ;
struct TYPE_20__ {TYPE_1__* datatype; } ;
struct TYPE_19__ {int paramid; int paramtype; } ;
struct TYPE_18__ {scalar_t__ parserSetupArg; scalar_t__ paramFetchArg; } ;
struct TYPE_16__ {int paramid; int paramtype; int * paramarg; void* paramfunc; } ;
struct TYPE_17__ {TYPE_2__ cparam; } ;
struct TYPE_15__ {int typlen; } ;
struct TYPE_14__ {int* resnull; TYPE_3__ d; int * resvalue; int opcode; } ;
typedef TYPE_4__* ParamListInfo ;
typedef TYPE_5__ Param ;
typedef TYPE_6__ PLpgSQL_var ;
typedef TYPE_7__ PLpgSQL_expr ;
typedef TYPE_8__ PLpgSQL_execstate ;
typedef TYPE_9__ PLpgSQL_datum ;
typedef int ExprState ;
typedef TYPE_10__ ExprEvalStep ;
typedef int Datum ;


 int Assert (int) ;
 int EEOP_PARAM_CALLBACK ;
 int ExprEvalPushStep (int *,TYPE_10__*) ;
 scalar_t__ PLPGSQL_DTYPE_PROMISE ;
 scalar_t__ PLPGSQL_DTYPE_REC ;
 scalar_t__ PLPGSQL_DTYPE_RECFIELD ;
 scalar_t__ PLPGSQL_DTYPE_VAR ;
 void* plpgsql_param_eval_generic ;
 void* plpgsql_param_eval_generic_ro ;
 void* plpgsql_param_eval_recfield ;
 void* plpgsql_param_eval_var ;
 void* plpgsql_param_eval_var_ro ;

__attribute__((used)) static void
plpgsql_param_compile(ParamListInfo params, Param *param,
       ExprState *state,
       Datum *resv, bool *resnull)
{
 PLpgSQL_execstate *estate;
 PLpgSQL_expr *expr;
 int dno;
 PLpgSQL_datum *datum;
 ExprEvalStep scratch;


 estate = (PLpgSQL_execstate *) params->paramFetchArg;
 expr = (PLpgSQL_expr *) params->parserSetupArg;


 dno = param->paramid - 1;
 Assert(dno >= 0 && dno < estate->ndatums);


 datum = estate->datums[dno];

 scratch.opcode = EEOP_PARAM_CALLBACK;
 scratch.resvalue = resv;
 scratch.resnull = resnull;
 if (datum->dtype == PLPGSQL_DTYPE_VAR)
 {
  if (dno != expr->rwparam &&
   ((PLpgSQL_var *) datum)->datatype->typlen == -1)
   scratch.d.cparam.paramfunc = plpgsql_param_eval_var_ro;
  else
   scratch.d.cparam.paramfunc = plpgsql_param_eval_var;
 }
 else if (datum->dtype == PLPGSQL_DTYPE_RECFIELD)
  scratch.d.cparam.paramfunc = plpgsql_param_eval_recfield;
 else if (datum->dtype == PLPGSQL_DTYPE_PROMISE)
 {
  if (dno != expr->rwparam &&
   ((PLpgSQL_var *) datum)->datatype->typlen == -1)
   scratch.d.cparam.paramfunc = plpgsql_param_eval_generic_ro;
  else
   scratch.d.cparam.paramfunc = plpgsql_param_eval_generic;
 }
 else if (datum->dtype == PLPGSQL_DTYPE_REC &&
    dno != expr->rwparam)
  scratch.d.cparam.paramfunc = plpgsql_param_eval_generic_ro;
 else
  scratch.d.cparam.paramfunc = plpgsql_param_eval_generic;







 scratch.d.cparam.paramarg = ((void*)0);
 scratch.d.cparam.paramid = param->paramid;
 scratch.d.cparam.paramtype = param->paramtype;
 ExprEvalPushStep(state, &scratch);
}
