
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int set_args ;
struct TYPE_28__ {int readonly_func; scalar_t__* datums; } ;
struct TYPE_27__ {int * plan; } ;
struct TYPE_26__ {int into; int * target; int * sqlstmt; int lineno; int cmd_type; } ;
struct TYPE_25__ {size_t curvar; int * argquery; int lineno; int cursor_options; int params; int * dynquery; TYPE_5__* query; } ;
struct TYPE_24__ {size_t cursor_explicit_argrow; int cursor_options; TYPE_5__* cursor_explicit_expr; int value; int isnull; } ;
struct TYPE_23__ {int name; } ;
typedef TYPE_1__* Portal ;
typedef int ParamListInfo ;
typedef int PLpgSQL_variable ;
typedef TYPE_2__ PLpgSQL_var ;
typedef TYPE_3__ PLpgSQL_stmt_open ;
typedef TYPE_4__ PLpgSQL_stmt_execsql ;
typedef TYPE_5__ PLpgSQL_expr ;
typedef TYPE_6__ PLpgSQL_execstate ;
typedef int * MemoryContext ;


 int ERRCODE_DUPLICATE_CURSOR ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int MemoryContextReset (int *) ;
 int * MemoryContextSwitchTo (int *) ;
 int PLPGSQL_RC_OK ;
 int PLPGSQL_STMT_EXECSQL ;
 int * SPI_cursor_find (char*) ;
 TYPE_1__* SPI_cursor_open_with_paramlist (char*,int *,int ,int ) ;
 int SPI_result ;
 int SPI_result_code_string (int ) ;
 char* TextDatumGetCString (int ) ;
 int assign_text_var (TYPE_6__*,TYPE_2__*,int ) ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 TYPE_1__* exec_dynquery_with_params (TYPE_6__*,int *,int ,char*,int ) ;
 int exec_eval_cleanup (TYPE_6__*) ;
 int exec_prepare_plan (TYPE_6__*,TYPE_5__*,int ,int) ;
 int exec_stmt_execsql (TYPE_6__*,TYPE_4__*) ;
 int * get_stmt_mcontext (TYPE_6__*) ;
 int memset (TYPE_4__*,int ,int) ;
 int setup_param_list (TYPE_6__*,TYPE_5__*) ;

__attribute__((used)) static int
exec_stmt_open(PLpgSQL_execstate *estate, PLpgSQL_stmt_open *stmt)
{
 PLpgSQL_var *curvar;
 MemoryContext stmt_mcontext = ((void*)0);
 char *curname = ((void*)0);
 PLpgSQL_expr *query;
 Portal portal;
 ParamListInfo paramLI;






 curvar = (PLpgSQL_var *) (estate->datums[stmt->curvar]);
 if (!curvar->isnull)
 {
  MemoryContext oldcontext;


  stmt_mcontext = get_stmt_mcontext(estate);
  oldcontext = MemoryContextSwitchTo(stmt_mcontext);
  curname = TextDatumGetCString(curvar->value);
  MemoryContextSwitchTo(oldcontext);

  if (SPI_cursor_find(curname) != ((void*)0))
   ereport(ERROR,
     (errcode(ERRCODE_DUPLICATE_CURSOR),
      errmsg("cursor \"%s\" already in use", curname)));
 }





 if (stmt->query != ((void*)0))
 {







  query = stmt->query;
  if (query->plan == ((void*)0))
   exec_prepare_plan(estate, query, stmt->cursor_options, 1);
 }
 else if (stmt->dynquery != ((void*)0))
 {




  portal = exec_dynquery_with_params(estate,
             stmt->dynquery,
             stmt->params,
             curname,
             stmt->cursor_options);







  if (curname == ((void*)0))
   assign_text_var(estate, curvar, portal->name);

  return PLPGSQL_RC_OK;
 }
 else
 {







  if (stmt->argquery != ((void*)0))
  {






   PLpgSQL_stmt_execsql set_args;

   if (curvar->cursor_explicit_argrow < 0)
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("arguments given for cursor without arguments")));

   memset(&set_args, 0, sizeof(set_args));
   set_args.cmd_type = PLPGSQL_STMT_EXECSQL;
   set_args.lineno = stmt->lineno;
   set_args.sqlstmt = stmt->argquery;
   set_args.into = 1;

   set_args.target = (PLpgSQL_variable *)
    (estate->datums[curvar->cursor_explicit_argrow]);

   if (exec_stmt_execsql(estate, &set_args) != PLPGSQL_RC_OK)
    elog(ERROR, "open cursor failed during argument processing");
  }
  else
  {
   if (curvar->cursor_explicit_argrow >= 0)
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("arguments required for cursor")));
  }

  query = curvar->cursor_explicit_expr;
  if (query->plan == ((void*)0))
   exec_prepare_plan(estate, query, curvar->cursor_options, 1);
 }




 paramLI = setup_param_list(estate, query);




 portal = SPI_cursor_open_with_paramlist(curname, query->plan,
           paramLI,
           estate->readonly_func);
 if (portal == ((void*)0))
  elog(ERROR, "could not open cursor: %s",
    SPI_result_code_string(SPI_result));




 if (curname == ((void*)0))
  assign_text_var(estate, curvar, portal->name);


 exec_eval_cleanup(estate);
 if (stmt_mcontext)
  MemoryContextReset(stmt_mcontext);

 return PLPGSQL_RC_OK;
}
