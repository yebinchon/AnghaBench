
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
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
dropDBs(PGconn *conn)
{
 PGresult *res;
 int i;





 res = executeQuery(conn,
        "SELECT datname "
        "FROM pg_database d "
        "WHERE datallowconn "
        "ORDER BY datname");

 if (PQntuples(res) > 0)
  fprintf(OPF, "--\n-- Drop databases (except postgres and template1)\n--\n\n");

 for (i = 0; i < PQntuples(res); i++)
 {
  char *dbname = PQgetvalue(res, i, 0);






  if (strcmp(dbname, "template1") != 0 &&
   strcmp(dbname, "template0") != 0 &&
   strcmp(dbname, "postgres") != 0)
  {
   fprintf(OPF, "DROP DATABASE %s%s;\n",
     if_exists ? "IF EXISTS " : "",
     fmtId(dbname));
  }
 }

 PQclear(res);

 fprintf(OPF, "\n\n");
}
