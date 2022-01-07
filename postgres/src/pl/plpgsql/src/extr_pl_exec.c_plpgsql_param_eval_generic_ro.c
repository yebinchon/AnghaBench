
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_15__ {TYPE_3__* ecxt_param_list_info; } ;
struct TYPE_10__ {int paramid; scalar_t__ paramtype; } ;
struct TYPE_11__ {TYPE_1__ cparam; } ;
struct TYPE_14__ {int * resnull; int * resvalue; TYPE_2__ d; } ;
struct TYPE_13__ {int ndatums; int ** datums; } ;
struct TYPE_12__ {scalar_t__ paramFetchArg; } ;
typedef TYPE_3__* ParamListInfo ;
typedef TYPE_4__ PLpgSQL_execstate ;
typedef int PLpgSQL_datum ;
typedef scalar_t__ Oid ;
typedef int ExprState ;
typedef TYPE_5__ ExprEvalStep ;
typedef TYPE_6__ ExprContext ;


 int Assert (int) ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERROR ;
 int MakeExpandedObjectReadOnly (int ,int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int,int ,int ) ;
 int exec_eval_datum (TYPE_4__*,int *,scalar_t__*,int *,int *,int *) ;
 int format_type_be (scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
plpgsql_param_eval_generic_ro(ExprState *state, ExprEvalStep *op,
         ExprContext *econtext)
{
 ParamListInfo params;
 PLpgSQL_execstate *estate;
 int dno = op->d.cparam.paramid - 1;
 PLpgSQL_datum *datum;
 Oid datumtype;
 int32 datumtypmod;


 params = econtext->ecxt_param_list_info;
 estate = (PLpgSQL_execstate *) params->paramFetchArg;
 Assert(dno >= 0 && dno < estate->ndatums);


 datum = estate->datums[dno];


 exec_eval_datum(estate, datum,
     &datumtype, &datumtypmod,
     op->resvalue, op->resnull);


 if (unlikely(datumtype != op->d.cparam.paramtype))
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("type of parameter %d (%s) does not match that when preparing the plan (%s)",
      op->d.cparam.paramid,
      format_type_be(datumtype),
      format_type_be(op->d.cparam.paramtype))));


 *op->resvalue = MakeExpandedObjectReadOnly(*op->resvalue,
              *op->resnull,
              -1);
}
