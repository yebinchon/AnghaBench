
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;
typedef int PGresult ;
typedef int PGconn ;


 int GetCurrentTimestamp () ;
 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int PQsendQuery (int *,char const*) ;
 int TimestampTzPlusMilliseconds (int ,int) ;
 int WARNING ;
 scalar_t__ pgfdw_get_cleanup_result (int *,int ,int **) ;
 int pgfdw_report_error (int ,int *,int *,int,char const*) ;

__attribute__((used)) static bool
pgfdw_exec_cleanup_query(PGconn *conn, const char *query, bool ignore_errors)
{
 PGresult *result = ((void*)0);
 TimestampTz endtime;







 endtime = TimestampTzPlusMilliseconds(GetCurrentTimestamp(), 30000);





 if (!PQsendQuery(conn, query))
 {
  pgfdw_report_error(WARNING, ((void*)0), conn, 0, query);
  return 0;
 }


 if (pgfdw_get_cleanup_result(conn, endtime, &result))
  return 0;


 if (PQresultStatus(result) != PGRES_COMMAND_OK)
 {
  pgfdw_report_error(WARNING, result, conn, 1, query);
  return ignore_errors;
 }
 PQclear(result);

 return 1;
}
