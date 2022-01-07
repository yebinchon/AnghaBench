
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sql ;
struct TYPE_3__ {char* p_name; int * conn; } ;
typedef TYPE_1__ PgFdwModifyState ;
typedef int PGresult ;


 int Assert (int ) ;
 int ERROR ;
 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int ReleaseConnection (int *) ;
 int * pgfdw_exec_query (int *,char*) ;
 int pgfdw_report_error (int ,int *,int *,int,char*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static void
finish_foreign_modify(PgFdwModifyState *fmstate)
{
 Assert(fmstate != ((void*)0));


 if (fmstate->p_name)
 {
  char sql[64];
  PGresult *res;

  snprintf(sql, sizeof(sql), "DEALLOCATE %s", fmstate->p_name);





  res = pgfdw_exec_query(fmstate->conn, sql);
  if (PQresultStatus(res) != PGRES_COMMAND_OK)
   pgfdw_report_error(ERROR, res, fmstate->conn, 1, sql);
  PQclear(res);
  fmstate->p_name = ((void*)0);
 }


 ReleaseConnection(fmstate->conn);
 fmstate->conn = ((void*)0);
}
