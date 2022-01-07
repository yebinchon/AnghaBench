
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


typedef int int32 ;
struct TYPE_20__ {int atttypmod; int atttypid; } ;
struct TYPE_19__ {int eval_processed; TYPE_1__* eval_tuptable; } ;
struct TYPE_18__ {int query; int * plan; } ;
struct TYPE_17__ {TYPE_14__* tupdesc; int * vals; } ;
struct TYPE_16__ {int natts; } ;
typedef TYPE_2__ PLpgSQL_expr ;
typedef TYPE_3__ PLpgSQL_execstate ;
typedef int Oid ;
typedef TYPE_4__* Form_pg_attribute ;
typedef int Datum ;


 int CURSOR_OPT_PARALLEL_OK ;
 int ERRCODE_CARDINALITY_VIOLATION ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int SPI_OK_SELECT ;
 int SPI_getbinval (int ,TYPE_14__*,int,int*) ;
 TYPE_4__* TupleDescAttr (TYPE_14__*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int errmsg_plural (char*,char*,int,int ,int) ;
 scalar_t__ exec_eval_simple_expr (TYPE_3__*,TYPE_2__*,int *,int*,int *,int *) ;
 int exec_prepare_plan (TYPE_3__*,TYPE_2__*,int ,int) ;
 int exec_run_select (TYPE_3__*,TYPE_2__*,int,int *) ;

__attribute__((used)) static Datum
exec_eval_expr(PLpgSQL_execstate *estate,
      PLpgSQL_expr *expr,
      bool *isNull,
      Oid *rettype,
      int32 *rettypmod)
{
 Datum result = 0;
 int rc;
 Form_pg_attribute attr;




 if (expr->plan == ((void*)0))
  exec_prepare_plan(estate, expr, CURSOR_OPT_PARALLEL_OK, 1);





 if (exec_eval_simple_expr(estate, expr,
         &result, isNull, rettype, rettypmod))
  return result;




 rc = exec_run_select(estate, expr, 2, ((void*)0));
 if (rc != SPI_OK_SELECT)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("query \"%s\" did not return data", expr->query)));




 if (estate->eval_tuptable->tupdesc->natts != 1)
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg_plural("query \"%s\" returned %d column",
          "query \"%s\" returned %d columns",
          estate->eval_tuptable->tupdesc->natts,
          expr->query,
          estate->eval_tuptable->tupdesc->natts)));




 attr = TupleDescAttr(estate->eval_tuptable->tupdesc, 0);
 *rettype = attr->atttypid;
 *rettypmod = attr->atttypmod;




 if (estate->eval_processed == 0)
 {
  *isNull = 1;
  return (Datum) 0;
 }




 if (estate->eval_processed != 1)
  ereport(ERROR,
    (errcode(ERRCODE_CARDINALITY_VIOLATION),
     errmsg("query \"%s\" returned more than one row",
      expr->query)));




 return SPI_getbinval(estate->eval_tuptable->vals[0],
       estate->eval_tuptable->tupdesc, 1, isNull);
}
