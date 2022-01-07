
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;


 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int * PQexec (int ,char const*) ;
 scalar_t__ PQgetisnull (int *,int ,int ) ;
 int PQgetvalue (int *,int ,int ) ;
 int PQnfields (int *) ;
 int PQntuples (int *) ;
 int PQresultErrorMessage (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int conn ;
 int pg_fatal (char*,...) ;
 char* pg_strdup (int ) ;

__attribute__((used)) static char *
run_simple_query(const char *sql)
{
 PGresult *res;
 char *result;

 res = PQexec(conn, sql);

 if (PQresultStatus(res) != PGRES_TUPLES_OK)
  pg_fatal("error running query (%s) in source server: %s",
     sql, PQresultErrorMessage(res));


 if (PQnfields(res) != 1 || PQntuples(res) != 1 || PQgetisnull(res, 0, 0))
  pg_fatal("unexpected result set from query");

 result = pg_strdup(PQgetvalue(res, 0, 0));

 PQclear(res);

 return result;
}
