
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {int ecxt_per_tuple_memory; } ;
struct TYPE_11__ {TYPE_6__* ps_ExprContext; } ;
struct TYPE_12__ {TYPE_1__ ps; } ;
struct TYPE_15__ {TYPE_2__ ss; scalar_t__ fdw_state; } ;
struct TYPE_14__ {int numParams; char** param_values; int cursor_exists; int eof_reached; scalar_t__ fetch_ct_2; scalar_t__ next_tuple; scalar_t__ num_tuples; int * tuples; int query; int cursor_number; int param_exprs; int param_flinfo; int * conn; } ;
struct TYPE_13__ {int data; } ;
typedef TYPE_3__ StringInfoData ;
typedef TYPE_4__ PgFdwScanState ;
typedef int PGresult ;
typedef int PGconn ;
typedef int MemoryContext ;
typedef TYPE_5__ ForeignScanState ;
typedef TYPE_6__ ExprContext ;


 int ERROR ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int PQsendQueryParams (int *,int ,int,int *,char const**,int *,int *,int ) ;
 int appendStringInfo (TYPE_3__*,char*,int ,int ) ;
 int initStringInfo (TYPE_3__*) ;
 int pfree (int ) ;
 int * pgfdw_get_result (int *,int ) ;
 int pgfdw_report_error (int ,int *,int *,int,int ) ;
 int process_query_params (TYPE_6__*,int ,int ,char const**) ;

__attribute__((used)) static void
create_cursor(ForeignScanState *node)
{
 PgFdwScanState *fsstate = (PgFdwScanState *) node->fdw_state;
 ExprContext *econtext = node->ss.ps.ps_ExprContext;
 int numParams = fsstate->numParams;
 const char **values = fsstate->param_values;
 PGconn *conn = fsstate->conn;
 StringInfoData buf;
 PGresult *res;






 if (numParams > 0)
 {
  MemoryContext oldcontext;

  oldcontext = MemoryContextSwitchTo(econtext->ecxt_per_tuple_memory);

  process_query_params(econtext,
        fsstate->param_flinfo,
        fsstate->param_exprs,
        values);

  MemoryContextSwitchTo(oldcontext);
 }


 initStringInfo(&buf);
 appendStringInfo(&buf, "DECLARE c%u CURSOR FOR\n%s",
      fsstate->cursor_number, fsstate->query);
 if (!PQsendQueryParams(conn, buf.data, numParams,
         ((void*)0), values, ((void*)0), ((void*)0), 0))
  pgfdw_report_error(ERROR, ((void*)0), conn, 0, buf.data);







 res = pgfdw_get_result(conn, buf.data);
 if (PQresultStatus(res) != PGRES_COMMAND_OK)
  pgfdw_report_error(ERROR, res, conn, 1, fsstate->query);
 PQclear(res);


 fsstate->cursor_exists = 1;
 fsstate->tuples = ((void*)0);
 fsstate->num_tuples = 0;
 fsstate->next_tuple = 0;
 fsstate->fetch_ct_2 = 0;
 fsstate->eof_reached = 0;


 pfree(buf.data);
}
