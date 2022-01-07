
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int output_path ;
struct TYPE_6__ {int ndbs; TYPE_2__* dbs; } ;
struct TYPE_8__ {TYPE_1__ dbarr; } ;
struct TYPE_7__ {char* db_name; } ;
typedef int PGresult ;
typedef int PGconn ;
typedef int FILE ;
typedef TYPE_2__ DbInfo ;
typedef TYPE_3__ ClusterInfo ;


 int MAXPGPATH ;
 int PG_REPORT ;
 int PQclear (int *) ;
 int PQfinish (int *) ;
 int PQfnumber (int *,char*) ;
 char* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int check_ok () ;
 int * connectToServer (TYPE_3__*,char*) ;
 int errno ;
 int * executeQueryOrDie (int *,char*) ;
 int fclose (int *) ;
 int * fopen_priv (char*,char*) ;
 int fprintf (int *,char*,char*,...) ;
 int pg_fatal (char*,char*,...) ;
 int pg_log (int ,char*) ;
 int prep_status (char*) ;
 int snprintf (char*,int,char*) ;
 int strerror (int ) ;

__attribute__((used)) static void
check_for_jsonb_9_4_usage(ClusterInfo *cluster)
{
 int dbnum;
 FILE *script = ((void*)0);
 bool found = 0;
 char output_path[MAXPGPATH];

 prep_status("Checking for incompatible \"jsonb\" data type");

 snprintf(output_path, sizeof(output_path), "tables_using_jsonb.txt");

 for (dbnum = 0; dbnum < cluster->dbarr.ndbs; dbnum++)
 {
  PGresult *res;
  bool db_used = 0;
  int ntups;
  int rowno;
  int i_nspname,
     i_relname,
     i_attname;
  DbInfo *active_db = &cluster->dbarr.dbs[dbnum];
  PGconn *conn = connectToServer(cluster, active_db->db_name);






  res = executeQueryOrDie(conn,
        "SELECT n.nspname, c.relname, a.attname "
        "FROM	pg_catalog.pg_class c, "
        "		pg_catalog.pg_namespace n, "
        "		pg_catalog.pg_attribute a "
        "WHERE	c.oid = a.attrelid AND "
        "		NOT a.attisdropped AND "
        "		a.atttypid = 'pg_catalog.jsonb'::pg_catalog.regtype AND "
        "		c.relnamespace = n.oid AND "

        "		n.nspname !~ '^pg_temp_' AND "
        "		n.nspname NOT IN ('pg_catalog', 'information_schema')");

  ntups = PQntuples(res);
  i_nspname = PQfnumber(res, "nspname");
  i_relname = PQfnumber(res, "relname");
  i_attname = PQfnumber(res, "attname");
  for (rowno = 0; rowno < ntups; rowno++)
  {
   found = 1;
   if (script == ((void*)0) && (script = fopen_priv(output_path, "w")) == ((void*)0))
    pg_fatal("could not open file \"%s\": %s\n",
       output_path, strerror(errno));
   if (!db_used)
   {
    fprintf(script, "In database: %s\n", active_db->db_name);
    db_used = 1;
   }
   fprintf(script, "  %s.%s.%s\n",
     PQgetvalue(res, rowno, i_nspname),
     PQgetvalue(res, rowno, i_relname),
     PQgetvalue(res, rowno, i_attname));
  }

  PQclear(res);

  PQfinish(conn);
 }

 if (script)
  fclose(script);

 if (found)
 {
  pg_log(PG_REPORT, "fatal\n");
  pg_fatal("Your installation contains the \"jsonb\" data type in user tables.\n"
     "The internal format of \"jsonb\" changed during 9.4 beta so this cluster cannot currently\n"
     "be upgraded.  You can remove the problem tables and restart the upgrade.  A list\n"
     "of the problem columns is in the file:\n"
     "    %s\n\n", output_path);
 }
 else
  check_ok();
}
