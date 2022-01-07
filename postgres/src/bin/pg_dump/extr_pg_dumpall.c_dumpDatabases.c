
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;


 int OPF ;
 int PG_BINARY_A ;
 int PQclear (int *) ;
 char* PQgetvalue (int *,int,int ) ;
 int PQntuples (int *) ;
 int database_exclude_names ;
 int * executeQuery (int *,char*) ;
 int exit_nicely (int) ;
 int fclose (int ) ;
 char* filename ;
 int fopen (char*,int ) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ output_clean ;
 int pg_log_error (char*,char*) ;
 int pg_log_info (char*,char*) ;
 int runPgDump (char*,char const*) ;
 scalar_t__ simple_string_list_member (int *,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
dumpDatabases(PGconn *conn)
{
 PGresult *res;
 int i;
 res = executeQuery(conn,
        "SELECT datname "
        "FROM pg_database d "
        "WHERE datallowconn "
        "ORDER BY (datname <> 'template1'), datname");

 if (PQntuples(res) > 0)
  fprintf(OPF, "--\n-- Databases\n--\n\n");

 for (i = 0; i < PQntuples(res); i++)
 {
  char *dbname = PQgetvalue(res, i, 0);
  const char *create_opts;
  int ret;


  if (strcmp(dbname, "template0") == 0)
   continue;


  if (simple_string_list_member(&database_exclude_names, dbname))
  {
   pg_log_info("excluding database \"%s\"", dbname);
   continue;
  }

  pg_log_info("dumping database \"%s\"", dbname);

  fprintf(OPF, "--\n-- Database \"%s\" dump\n--\n\n", dbname);
  if (strcmp(dbname, "template1") == 0 || strcmp(dbname, "postgres") == 0)
  {
   if (output_clean)
    create_opts = "--clean --create";
   else
   {
    create_opts = "";

    fprintf(OPF, "\\connect %s\n\n", dbname);
   }
  }
  else
   create_opts = "--create";

  if (filename)
   fclose(OPF);

  ret = runPgDump(dbname, create_opts);
  if (ret != 0)
  {
   pg_log_error("pg_dump failed on database \"%s\", exiting", dbname);
   exit_nicely(1);
  }

  if (filename)
  {
   OPF = fopen(filename, PG_BINARY_A);
   if (!OPF)
   {
    pg_log_error("could not re-open the output file \"%s\": %m",
        filename);
    exit_nicely(1);
   }
  }

 }

 PQclear(res);
}
