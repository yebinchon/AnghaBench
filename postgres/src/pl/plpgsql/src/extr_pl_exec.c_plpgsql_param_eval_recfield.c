
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;


struct TYPE_26__ {scalar_t__ er_tupdesc_id; } ;
struct TYPE_25__ {TYPE_3__* ecxt_param_list_info; } ;
struct TYPE_18__ {int paramid; scalar_t__ paramtype; } ;
struct TYPE_19__ {TYPE_1__ cparam; } ;
struct TYPE_24__ {TYPE_2__ d; int resnull; int * resvalue; } ;
struct TYPE_23__ {int ndatums; scalar_t__* datums; } ;
struct TYPE_22__ {int refname; TYPE_9__* erh; } ;
struct TYPE_17__ {scalar_t__ ftypeid; int fnumber; } ;
struct TYPE_21__ {scalar_t__ dtype; size_t recparentno; scalar_t__ rectupledescid; TYPE_15__ finfo; int fieldname; } ;
struct TYPE_20__ {scalar_t__ paramFetchArg; } ;
typedef TYPE_3__* ParamListInfo ;
typedef TYPE_4__ PLpgSQL_recfield ;
typedef TYPE_5__ PLpgSQL_rec ;
typedef TYPE_6__ PLpgSQL_execstate ;
typedef int ExprState ;
typedef TYPE_7__ ExprEvalStep ;
typedef TYPE_8__ ExprContext ;
typedef TYPE_9__ ExpandedRecordHeader ;


 int Assert (int) ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 scalar_t__ PLPGSQL_DTYPE_RECFIELD ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int,int ,...) ;
 int expanded_record_get_field (TYPE_9__*,int ,int ) ;
 int expanded_record_lookup_field (TYPE_9__*,int ,TYPE_15__*) ;
 int format_type_be (scalar_t__) ;
 int instantiate_empty_record_variable (TYPE_6__*,TYPE_5__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
plpgsql_param_eval_recfield(ExprState *state, ExprEvalStep *op,
       ExprContext *econtext)
{
 ParamListInfo params;
 PLpgSQL_execstate *estate;
 int dno = op->d.cparam.paramid - 1;
 PLpgSQL_recfield *recfield;
 PLpgSQL_rec *rec;
 ExpandedRecordHeader *erh;


 params = econtext->ecxt_param_list_info;
 estate = (PLpgSQL_execstate *) params->paramFetchArg;
 Assert(dno >= 0 && dno < estate->ndatums);


 recfield = (PLpgSQL_recfield *) estate->datums[dno];
 Assert(recfield->dtype == PLPGSQL_DTYPE_RECFIELD);


 rec = (PLpgSQL_rec *) (estate->datums[recfield->recparentno]);
 erh = rec->erh;






 if (erh == ((void*)0))
 {
  instantiate_empty_record_variable(estate, rec);
  erh = rec->erh;
 }





 if (unlikely(recfield->rectupledescid != erh->er_tupdesc_id))
 {
  if (!expanded_record_lookup_field(erh,
            recfield->fieldname,
            &recfield->finfo))
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_COLUMN),
      errmsg("record \"%s\" has no field \"%s\"",
       rec->refname, recfield->fieldname)));
  recfield->rectupledescid = erh->er_tupdesc_id;
 }


 *op->resvalue = expanded_record_get_field(erh,
             recfield->finfo.fnumber,
             op->resnull);


 if (unlikely(recfield->finfo.ftypeid != op->d.cparam.paramtype))
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("type of parameter %d (%s) does not match that when preparing the plan (%s)",
      op->d.cparam.paramid,
      format_type_be(recfield->finfo.ftypeid),
      format_type_be(op->d.cparam.paramtype))));
}
