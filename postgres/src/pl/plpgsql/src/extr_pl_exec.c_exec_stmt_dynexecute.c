
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int uint64 ;
typedef int int32 ;
struct TYPE_25__ {TYPE_2__* func; scalar_t__* datums; void* eval_processed; int readonly_func; } ;
struct TYPE_24__ {scalar_t__ strict; TYPE_1__* target; scalar_t__ into; int params; int query; } ;
struct TYPE_23__ {int nulls; int values; int types; int nargs; } ;
struct TYPE_22__ {int tupdesc; int ** vals; } ;
struct TYPE_21__ {scalar_t__ print_strict_params; } ;
struct TYPE_20__ {size_t dno; } ;
typedef TYPE_3__ SPITupleTable ;
typedef TYPE_4__ PreparedParamsData ;
typedef int PLpgSQL_variable ;
typedef TYPE_5__ PLpgSQL_stmt_dynexecute ;
typedef TYPE_6__ PLpgSQL_execstate ;
typedef int Oid ;
typedef int MemoryContext ;
typedef int Datum ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_NO_DATA_FOUND ;
 int ERRCODE_NULL_VALUE_NOT_ALLOWED ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERRCODE_TOO_MANY_ROWS ;
 int ERROR ;
 int MemoryContextReset (int ) ;
 char* MemoryContextStrdup (int ,char*) ;
 int PLPGSQL_RC_OK ;
 int SPI_execute (char*,int ,int ) ;
 int SPI_execute_with_args (char*,int ,int ,int ,int ,int ,int ) ;
 int SPI_freetuptable (TYPE_3__*) ;
 void* SPI_processed ;
 int SPI_result_code_string (int) ;
 TYPE_3__* SPI_tuptable ;
 char* convert_value_to_string (TYPE_6__*,int ,int ) ;
 int elog (int ,char*,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail_internal (char*,char*) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int exec_eval_cleanup (TYPE_6__*) ;
 int exec_eval_expr (TYPE_6__*,int ,int*,int *,int *) ;
 TYPE_4__* exec_eval_using_params (TYPE_6__*,int ) ;
 int exec_move_row (TYPE_6__*,int *,int *,int ) ;
 char* format_preparedparamsdata (TYPE_6__*,TYPE_4__*) ;
 int get_stmt_mcontext (TYPE_6__*) ;

__attribute__((used)) static int
exec_stmt_dynexecute(PLpgSQL_execstate *estate,
      PLpgSQL_stmt_dynexecute *stmt)
{
 Datum query;
 bool isnull;
 Oid restype;
 int32 restypmod;
 char *querystr;
 int exec_res;
 PreparedParamsData *ppd = ((void*)0);
 MemoryContext stmt_mcontext = get_stmt_mcontext(estate);





 query = exec_eval_expr(estate, stmt->query, &isnull, &restype, &restypmod);
 if (isnull)
  ereport(ERROR,
    (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
     errmsg("query string argument of EXECUTE is null")));


 querystr = convert_value_to_string(estate, query, restype);


 querystr = MemoryContextStrdup(stmt_mcontext, querystr);

 exec_eval_cleanup(estate);




 if (stmt->params)
 {
  ppd = exec_eval_using_params(estate, stmt->params);
  exec_res = SPI_execute_with_args(querystr,
           ppd->nargs, ppd->types,
           ppd->values, ppd->nulls,
           estate->readonly_func, 0);
 }
 else
  exec_res = SPI_execute(querystr, estate->readonly_func, 0);

 switch (exec_res)
 {
  case 132:
  case 135:
  case 130:
  case 137:
  case 134:
  case 129:
  case 136:
  case 128:
  case 133:
   break;

  case 0:





   break;

  case 131:
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("EXECUTE of SELECT ... INTO is not implemented"),
      errhint("You might want to use EXECUTE ... INTO or EXECUTE CREATE TABLE ... AS instead.")));
   break;


  case 139:
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot COPY to/from client in PL/pgSQL")));
   break;

  case 138:
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("EXECUTE of transaction commands is not implemented")));
   break;

  default:
   elog(ERROR, "SPI_execute failed executing query \"%s\": %s",
     querystr, SPI_result_code_string(exec_res));
   break;
 }


 estate->eval_processed = SPI_processed;


 if (stmt->into)
 {
  SPITupleTable *tuptab = SPI_tuptable;
  uint64 n = SPI_processed;
  PLpgSQL_variable *target;


  if (tuptab == ((void*)0))
   ereport(ERROR,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("INTO used with a command that cannot return data")));


  target = (PLpgSQL_variable *) estate->datums[stmt->target->dno];






  if (n == 0)
  {
   if (stmt->strict)
   {
    char *errdetail;

    if (estate->func->print_strict_params)
     errdetail = format_preparedparamsdata(estate, ppd);
    else
     errdetail = ((void*)0);

    ereport(ERROR,
      (errcode(ERRCODE_NO_DATA_FOUND),
       errmsg("query returned no rows"),
       errdetail ? errdetail_internal("parameters: %s", errdetail) : 0));
   }

   exec_move_row(estate, target, ((void*)0), tuptab->tupdesc);
  }
  else
  {
   if (n > 1 && stmt->strict)
   {
    char *errdetail;

    if (estate->func->print_strict_params)
     errdetail = format_preparedparamsdata(estate, ppd);
    else
     errdetail = ((void*)0);

    ereport(ERROR,
      (errcode(ERRCODE_TOO_MANY_ROWS),
       errmsg("query returned more than one row"),
       errdetail ? errdetail_internal("parameters: %s", errdetail) : 0));
   }


   exec_move_row(estate, target, tuptab->vals[0], tuptab->tupdesc);
  }

  exec_eval_cleanup(estate);
 }
 else
 {





 }


 SPI_freetuptable(SPI_tuptable);
 MemoryContextReset(stmt_mcontext);

 return PLPGSQL_RC_OK;
}
