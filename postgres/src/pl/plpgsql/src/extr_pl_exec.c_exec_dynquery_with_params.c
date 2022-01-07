
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_11__ {int readonly_func; } ;
struct TYPE_10__ {int * nulls; int * values; int * types; int nargs; } ;
typedef TYPE_1__ PreparedParamsData ;
typedef int * Portal ;
typedef int PLpgSQL_expr ;
typedef TYPE_2__ PLpgSQL_execstate ;
typedef int Oid ;
typedef int MemoryContext ;
typedef int List ;
typedef int Datum ;


 int ERRCODE_NULL_VALUE_NOT_ALLOWED ;
 int ERROR ;
 int MemoryContextReset (int ) ;
 char* MemoryContextStrdup (int ,char*) ;
 int * SPI_cursor_open_with_args (char const*,char*,int ,int *,int *,int *,int ,int) ;
 int SPI_result ;
 int SPI_result_code_string (int ) ;
 char* convert_value_to_string (TYPE_2__*,int ,int ) ;
 int elog (int ,char*,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int exec_eval_cleanup (TYPE_2__*) ;
 int exec_eval_expr (TYPE_2__*,int *,int*,int *,int *) ;
 TYPE_1__* exec_eval_using_params (TYPE_2__*,int *) ;
 int get_stmt_mcontext (TYPE_2__*) ;

__attribute__((used)) static Portal
exec_dynquery_with_params(PLpgSQL_execstate *estate,
        PLpgSQL_expr *dynquery,
        List *params,
        const char *portalname,
        int cursorOptions)
{
 Portal portal;
 Datum query;
 bool isnull;
 Oid restype;
 int32 restypmod;
 char *querystr;
 MemoryContext stmt_mcontext = get_stmt_mcontext(estate);





 query = exec_eval_expr(estate, dynquery, &isnull, &restype, &restypmod);
 if (isnull)
  ereport(ERROR,
    (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
     errmsg("query string argument of EXECUTE is null")));


 querystr = convert_value_to_string(estate, query, restype);


 querystr = MemoryContextStrdup(stmt_mcontext, querystr);

 exec_eval_cleanup(estate);






 if (params)
 {
  PreparedParamsData *ppd;

  ppd = exec_eval_using_params(estate, params);
  portal = SPI_cursor_open_with_args(portalname,
             querystr,
             ppd->nargs, ppd->types,
             ppd->values, ppd->nulls,
             estate->readonly_func,
             cursorOptions);
 }
 else
 {
  portal = SPI_cursor_open_with_args(portalname,
             querystr,
             0, ((void*)0),
             ((void*)0), ((void*)0),
             estate->readonly_func,
             cursorOptions);
 }

 if (portal == ((void*)0))
  elog(ERROR, "could not open implicit cursor for query \"%s\": %s",
    querystr, SPI_result_code_string(SPI_result));


 MemoryContextReset(stmt_mcontext);

 return portal;
}
