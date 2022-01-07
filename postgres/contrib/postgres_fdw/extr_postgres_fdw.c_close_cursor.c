
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sql ;
typedef int PGresult ;
typedef int PGconn ;


 int ERROR ;
 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int * pgfdw_exec_query (int *,char*) ;
 int pgfdw_report_error (int ,int *,int *,int,char*) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static void
close_cursor(PGconn *conn, unsigned int cursor_number)
{
 char sql[64];
 PGresult *res;

 snprintf(sql, sizeof(sql), "CLOSE c%u", cursor_number);





 res = pgfdw_exec_query(conn, sql);
 if (PQresultStatus(res) != PGRES_COMMAND_OK)
  pgfdw_report_error(ERROR, res, conn, 1, sql);
 PQclear(res);
}
