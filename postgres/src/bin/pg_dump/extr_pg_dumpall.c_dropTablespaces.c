
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;


 int OPF ;
 int PQclear (int *) ;
 char* PQgetvalue (int *,int,int ) ;
 int PQntuples (int *) ;
 int * executeQuery (int *,char*) ;
 int fmtId (char*) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ if_exists ;

__attribute__((used)) static void
dropTablespaces(PGconn *conn)
{
 PGresult *res;
 int i;





 res = executeQuery(conn, "SELECT spcname "
        "FROM pg_catalog.pg_tablespace "
        "WHERE spcname !~ '^pg_' "
        "ORDER BY 1");

 if (PQntuples(res) > 0)
  fprintf(OPF, "--\n-- Drop tablespaces\n--\n\n");

 for (i = 0; i < PQntuples(res); i++)
 {
  char *spcname = PQgetvalue(res, i, 0);

  fprintf(OPF, "DROP TABLESPACE %s%s;\n",
    if_exists ? "IF EXISTS " : "",
    fmtId(spcname));
 }

 PQclear(res);

 fprintf(OPF, "\n\n");
}
