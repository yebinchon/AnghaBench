
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int prep_name ;
struct TYPE_3__ {char* p_name; int query; int conn; } ;
typedef TYPE_1__ PgFdwModifyState ;
typedef int PGresult ;


 int ERROR ;
 int GetPrepStmtNumber (int ) ;
 int NAMEDATALEN ;
 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int PQsendPrepare (int ,char*,int ,int ,int *) ;
 int * pgfdw_get_result (int ,int ) ;
 int pgfdw_report_error (int ,int *,int ,int,int ) ;
 char* pstrdup (char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
prepare_foreign_modify(PgFdwModifyState *fmstate)
{
 char prep_name[NAMEDATALEN];
 char *p_name;
 PGresult *res;


 snprintf(prep_name, sizeof(prep_name), "pgsql_fdw_prep_%u",
    GetPrepStmtNumber(fmstate->conn));
 p_name = pstrdup(prep_name);
 if (!PQsendPrepare(fmstate->conn,
        p_name,
        fmstate->query,
        0,
        ((void*)0)))
  pgfdw_report_error(ERROR, ((void*)0), fmstate->conn, 0, fmstate->query);







 res = pgfdw_get_result(fmstate->conn, fmstate->query);
 if (PQresultStatus(res) != PGRES_COMMAND_OK)
  pgfdw_report_error(ERROR, res, fmstate->conn, 1, fmstate->query);
 PQclear(res);


 fmstate->p_name = p_name;
}
