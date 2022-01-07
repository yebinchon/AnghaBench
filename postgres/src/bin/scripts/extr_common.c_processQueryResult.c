
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;


 int ERRCODE_UNDEFINED_TABLE ;
 scalar_t__ PGRES_COMMAND_OK ;
 int PG_DIAG_SQLSTATE ;
 int PQclear (int *) ;
 int PQdb (int *) ;
 int PQerrorMessage (int *) ;
 char* PQresultErrorField (int *,int ) ;
 scalar_t__ PQresultStatus (int *) ;
 int pg_log_error (char*,int ,int ) ;
 scalar_t__ strcmp (char*,int ) ;

bool
processQueryResult(PGconn *conn, PGresult *result)
{




 if (PQresultStatus(result) != PGRES_COMMAND_OK)
 {
  char *sqlState = PQresultErrorField(result, PG_DIAG_SQLSTATE);

  pg_log_error("processing of database \"%s\" failed: %s",
      PQdb(conn), PQerrorMessage(conn));

  if (sqlState && strcmp(sqlState, ERRCODE_UNDEFINED_TABLE) != 0)
  {
   PQclear(result);
   return 0;
  }
 }

 PQclear(result);
 return 1;
}
