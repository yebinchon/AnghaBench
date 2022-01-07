
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * ps_ExprContext; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;
struct TYPE_9__ {TYPE_2__ ss; scalar_t__ fdw_state; } ;
struct TYPE_8__ {int numParams; char** param_values; int * result; int num_tuples; scalar_t__ has_returning; int query; int conn; int param_exprs; int param_flinfo; } ;
typedef TYPE_3__ PgFdwDirectModifyState ;
typedef TYPE_4__ ForeignScanState ;
typedef int ExprContext ;


 int ERROR ;
 scalar_t__ PGRES_COMMAND_OK ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQcmdTuples (int *) ;
 int PQntuples (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int PQsendQueryParams (int ,int ,int,int *,char const**,int *,int *,int ) ;
 int atoi (int ) ;
 int * pgfdw_get_result (int ,int ) ;
 int pgfdw_report_error (int ,int *,int ,int,int ) ;
 int process_query_params (int *,int ,int ,char const**) ;

__attribute__((used)) static void
execute_dml_stmt(ForeignScanState *node)
{
 PgFdwDirectModifyState *dmstate = (PgFdwDirectModifyState *) node->fdw_state;
 ExprContext *econtext = node->ss.ps.ps_ExprContext;
 int numParams = dmstate->numParams;
 const char **values = dmstate->param_values;




 if (numParams > 0)
  process_query_params(econtext,
        dmstate->param_flinfo,
        dmstate->param_exprs,
        values);
 if (!PQsendQueryParams(dmstate->conn, dmstate->query, numParams,
         ((void*)0), values, ((void*)0), ((void*)0), 0))
  pgfdw_report_error(ERROR, ((void*)0), dmstate->conn, 0, dmstate->query);







 dmstate->result = pgfdw_get_result(dmstate->conn, dmstate->query);
 if (PQresultStatus(dmstate->result) !=
  (dmstate->has_returning ? PGRES_TUPLES_OK : PGRES_COMMAND_OK))
  pgfdw_report_error(ERROR, dmstate->result, dmstate->conn, 1,
         dmstate->query);


 if (dmstate->has_returning)
  dmstate->num_tuples = PQntuples(dmstate->result);
 else
  dmstate->num_tuples = atoi(PQcmdTuples(dmstate->result));
}
