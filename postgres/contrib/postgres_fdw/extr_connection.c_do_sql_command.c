
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;


 int ERROR ;
 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int PQsendQuery (int *,char const*) ;
 int * pgfdw_get_result (int *,char const*) ;
 int pgfdw_report_error (int ,int *,int *,int,char const*) ;

__attribute__((used)) static void
do_sql_command(PGconn *conn, const char *sql)
{
 PGresult *res;

 if (!PQsendQuery(conn, sql))
  pgfdw_report_error(ERROR, ((void*)0), conn, 0, sql);
 res = pgfdw_get_result(conn, sql);
 if (PQresultStatus(res) != PGRES_COMMAND_OK)
  pgfdw_report_error(ERROR, res, conn, 1, sql);
 PQclear(res);
}
