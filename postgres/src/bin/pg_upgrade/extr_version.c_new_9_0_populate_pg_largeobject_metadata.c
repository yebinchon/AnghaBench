
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int output_path ;
struct TYPE_10__ {int ndbs; TYPE_3__* dbs; } ;
struct TYPE_13__ {TYPE_1__ dbarr; } ;
struct TYPE_12__ {int db_name; } ;
struct TYPE_11__ {int data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef int PGresult ;
typedef int PGconn ;
typedef int FILE ;
typedef TYPE_3__ DbInfo ;
typedef TYPE_4__ ClusterInfo ;


 int MAXPGPATH ;
 int PG_WARNING ;
 int PQclear (int *) ;
 int PQfinish (int *) ;
 int PQfnumber (int *,char*) ;
 int PQgetvalue (int *,int ,int) ;
 int appendPsqlMetaConnect (TYPE_2__*,int ) ;
 scalar_t__ atoi (int ) ;
 int check_ok () ;
 int * connectToServer (TYPE_4__*,int ) ;
 int errno ;
 int * executeQueryOrDie (int *,char*) ;
 int fclose (int *) ;
 int * fopen_priv (char*,char*) ;
 int fprintf (int *,char*) ;
 int fputs (int ,int *) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int pg_fatal (char*,char*,int ) ;
 int pg_log (int ,char*,...) ;
 int prep_status (char*) ;
 int report_status (int ,char*) ;
 int snprintf (char*,int,char*) ;
 int strerror (int ) ;
 int termPQExpBuffer (TYPE_2__*) ;

void
new_9_0_populate_pg_largeobject_metadata(ClusterInfo *cluster, bool check_mode)
{
 int dbnum;
 FILE *script = ((void*)0);
 bool found = 0;
 char output_path[MAXPGPATH];

 prep_status("Checking for large objects");

 snprintf(output_path, sizeof(output_path), "pg_largeobject.sql");

 for (dbnum = 0; dbnum < cluster->dbarr.ndbs; dbnum++)
 {
  PGresult *res;
  int i_count;
  DbInfo *active_db = &cluster->dbarr.dbs[dbnum];
  PGconn *conn = connectToServer(cluster, active_db->db_name);


  res = executeQueryOrDie(conn,
        "SELECT count(*) "
        "FROM	pg_catalog.pg_largeobject ");

  i_count = PQfnumber(res, "count");
  if (atoi(PQgetvalue(res, 0, i_count)) != 0)
  {
   found = 1;
   if (!check_mode)
   {
    PQExpBufferData connectbuf;

    if (script == ((void*)0) && (script = fopen_priv(output_path, "w")) == ((void*)0))
     pg_fatal("could not open file \"%s\": %s\n", output_path,
        strerror(errno));

    initPQExpBuffer(&connectbuf);
    appendPsqlMetaConnect(&connectbuf, active_db->db_name);
    fputs(connectbuf.data, script);
    termPQExpBuffer(&connectbuf);

    fprintf(script,
      "SELECT pg_catalog.lo_create(t.loid)\n"
      "FROM (SELECT DISTINCT loid FROM pg_catalog.pg_largeobject) AS t;\n");
   }
  }

  PQclear(res);
  PQfinish(conn);
 }

 if (script)
  fclose(script);

 if (found)
 {
  report_status(PG_WARNING, "warning");
  if (check_mode)
   pg_log(PG_WARNING, "\n"
       "Your installation contains large objects.  The new database has an\n"
       "additional large object permission table.  After upgrading, you will be\n"
       "given a command to populate the pg_largeobject_metadata table with\n"
       "default permissions.\n\n");
  else
   pg_log(PG_WARNING, "\n"
       "Your installation contains large objects.  The new database has an\n"
       "additional large object permission table, so default permissions must be\n"
       "defined for all large objects.  The file\n"
       "    %s\n"
       "when executed by psql by the database superuser will set the default\n"
       "permissions.\n\n",
       output_path);
 }
 else
  check_ok();
}
