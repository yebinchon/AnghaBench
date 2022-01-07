
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;


 int ERROR ;
 int PQsendQuery (int *,char const*) ;
 int * pgfdw_get_result (int *,char const*) ;
 int pgfdw_report_error (int ,int *,int *,int,char const*) ;

PGresult *
pgfdw_exec_query(PGconn *conn, const char *query)
{




 if (!PQsendQuery(conn, query))
  pgfdw_report_error(ERROR, ((void*)0), conn, 0, query);


 return pgfdw_get_result(conn, query);
}
