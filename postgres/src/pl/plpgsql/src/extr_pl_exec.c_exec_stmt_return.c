
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_21__ {int dtype; } ;
struct TYPE_20__ {int retisnull; scalar_t__ fn_rettype; scalar_t__ rettype; void* retval; TYPE_2__* func; scalar_t__ retistuple; TYPE_7__** datums; scalar_t__ retisset; } ;
struct TYPE_19__ {scalar_t__ rectypeid; int erh; } ;
struct TYPE_18__ {size_t retvarno; int * expr; } ;
struct TYPE_17__ {int isnull; TYPE_1__* datatype; void* value; } ;
struct TYPE_16__ {scalar_t__ fn_prokind; } ;
struct TYPE_15__ {scalar_t__ typoid; } ;
typedef TYPE_3__ PLpgSQL_var ;
typedef TYPE_4__ PLpgSQL_stmt_return ;
typedef int PLpgSQL_row ;
typedef TYPE_5__ PLpgSQL_rec ;
typedef TYPE_6__ PLpgSQL_execstate ;
typedef TYPE_7__ PLpgSQL_datum ;
typedef void* Datum ;


 int ERRCODE_DATATYPE_MISMATCH ;
 int ERROR ;
 void* ExpandedRecordGetDatum (int ) ;
 int ExpandedRecordIsEmpty (int ) ;
 scalar_t__ InvalidOid ;




 int PLPGSQL_RC_RETURN ;
 scalar_t__ PROKIND_PROCEDURE ;
 scalar_t__ VOIDOID ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int exec_eval_datum (TYPE_6__*,TYPE_7__*,scalar_t__*,int *,void**,int*) ;
 void* exec_eval_expr (TYPE_6__*,int *,int*,scalar_t__*,int *) ;
 int plpgsql_fulfill_promise (TYPE_6__*,TYPE_3__*) ;
 int type_is_rowtype (scalar_t__) ;

__attribute__((used)) static int
exec_stmt_return(PLpgSQL_execstate *estate, PLpgSQL_stmt_return *stmt)
{





 if (estate->retisset)
  return PLPGSQL_RC_RETURN;


 estate->retval = (Datum) 0;
 estate->retisnull = 1;
 estate->rettype = InvalidOid;
 if (stmt->retvarno >= 0)
 {
  PLpgSQL_datum *retvar = estate->datums[stmt->retvarno];

  switch (retvar->dtype)
  {
   case 131:

    plpgsql_fulfill_promise(estate, (PLpgSQL_var *) retvar);



   case 128:
    {
     PLpgSQL_var *var = (PLpgSQL_var *) retvar;

     estate->retval = var->value;
     estate->retisnull = var->isnull;
     estate->rettype = var->datatype->typoid;
     if (estate->retistuple && !estate->retisnull)
      ereport(ERROR,
        (errcode(ERRCODE_DATATYPE_MISMATCH),
         errmsg("cannot return non-composite value from function returning composite type")));
    }
    break;

   case 130:
    {
     PLpgSQL_rec *rec = (PLpgSQL_rec *) retvar;


     if (rec->erh && !ExpandedRecordIsEmpty(rec->erh))
     {
      estate->retval = ExpandedRecordGetDatum(rec->erh);
      estate->retisnull = 0;
      estate->rettype = rec->rectypeid;
     }
    }
    break;

   case 129:
    {
     PLpgSQL_row *row = (PLpgSQL_row *) retvar;
     int32 rettypmod;


     exec_eval_datum(estate,
         (PLpgSQL_datum *) row,
         &estate->rettype,
         &rettypmod,
         &estate->retval,
         &estate->retisnull);
    }
    break;

   default:
    elog(ERROR, "unrecognized dtype: %d", retvar->dtype);
  }

  return PLPGSQL_RC_RETURN;
 }

 if (stmt->expr != ((void*)0))
 {
  int32 rettypmod;

  estate->retval = exec_eval_expr(estate, stmt->expr,
          &(estate->retisnull),
          &(estate->rettype),
          &rettypmod);





  if (estate->retistuple && !estate->retisnull &&
   !type_is_rowtype(estate->rettype))
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("cannot return non-composite value from function returning composite type")));

  return PLPGSQL_RC_RETURN;
 }






 if (estate->fn_rettype == VOIDOID &&
  estate->func->fn_prokind != PROKIND_PROCEDURE)
 {
  estate->retval = (Datum) 0;
  estate->retisnull = 0;
  estate->rettype = VOIDOID;
 }

 return PLPGSQL_RC_RETURN;
}
