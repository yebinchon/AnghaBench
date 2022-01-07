
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


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


 int PG_WARNING ;
 int PQclear (int *) ;
 int PQfinish (int *) ;
 int PQfnumber (int *,char*) ;
 int PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPsqlMetaConnect (TYPE_2__*,int ) ;
 int check_ok () ;
 int * connectToServer (TYPE_4__*,int ) ;
 int errno ;
 int * executeQueryOrDie (int *,char*) ;
 int fclose (int *) ;
 int * fopen_priv (char*,char*) ;
 int fprintf (int *,char*,char*,char*) ;
 int fputs (int ,int *) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int pg_fatal (char*,char*,int ) ;
 int pg_log (int ,char*,...) ;
 int prep_status (char*) ;
 char* quote_identifier (int ) ;
 int report_status (int ,char*) ;
 int strerror (int ) ;
 int termPQExpBuffer (TYPE_2__*) ;

void
old_9_6_invalidate_hash_indexes(ClusterInfo *cluster, bool check_mode)
{
 int dbnum;
 FILE *script = ((void*)0);
 bool found = 0;
 char *output_path = "reindex_hash.sql";

 prep_status("Checking for hash indexes");

 for (dbnum = 0; dbnum < cluster->dbarr.ndbs; dbnum++)
 {
  PGresult *res;
  bool db_used = 0;
  int ntups;
  int rowno;
  int i_nspname,
     i_relname;
  DbInfo *active_db = &cluster->dbarr.dbs[dbnum];
  PGconn *conn = connectToServer(cluster, active_db->db_name);


  res = executeQueryOrDie(conn,
        "SELECT n.nspname, c.relname "
        "FROM	pg_catalog.pg_class c, "
        "		pg_catalog.pg_index i, "
        "		pg_catalog.pg_am a, "
        "		pg_catalog.pg_namespace n "
        "WHERE	i.indexrelid = c.oid AND "
        "		c.relam = a.oid AND "
        "		c.relnamespace = n.oid AND "
        "		a.amname = 'hash'"
   );

  ntups = PQntuples(res);
  i_nspname = PQfnumber(res, "nspname");
  i_relname = PQfnumber(res, "relname");
  for (rowno = 0; rowno < ntups; rowno++)
  {
   found = 1;
   if (!check_mode)
   {
    if (script == ((void*)0) && (script = fopen_priv(output_path, "w")) == ((void*)0))
     pg_fatal("could not open file \"%s\": %s\n", output_path,
        strerror(errno));
    if (!db_used)
    {
     PQExpBufferData connectbuf;

     initPQExpBuffer(&connectbuf);
     appendPsqlMetaConnect(&connectbuf, active_db->db_name);
     fputs(connectbuf.data, script);
     termPQExpBuffer(&connectbuf);
     db_used = 1;
    }
    fprintf(script, "REINDEX INDEX %s.%s;\n",
      quote_identifier(PQgetvalue(res, rowno, i_nspname)),
      quote_identifier(PQgetvalue(res, rowno, i_relname)));
   }
  }

  PQclear(res);

  if (!check_mode && db_used)
  {

   PQclear(executeQueryOrDie(conn,
           "UPDATE pg_catalog.pg_index i "
           "SET	indisvalid = false "
           "FROM	pg_catalog.pg_class c, "
           "		pg_catalog.pg_am a, "
           "		pg_catalog.pg_namespace n "
           "WHERE	i.indexrelid = c.oid AND "
           "		c.relam = a.oid AND "
           "		c.relnamespace = n.oid AND "
           "		a.amname = 'hash'"));
  }

  PQfinish(conn);
 }

 if (script)
  fclose(script);

 if (found)
 {
  report_status(PG_WARNING, "warning");
  if (check_mode)
   pg_log(PG_WARNING, "\n"
       "Your installation contains hash indexes.  These indexes have different\n"
       "internal formats between your old and new clusters, so they must be\n"
       "reindexed with the REINDEX command.  After upgrading, you will be given\n"
       "REINDEX instructions.\n\n");
  else
   pg_log(PG_WARNING, "\n"
       "Your installation contains hash indexes.  These indexes have different\n"
       "internal formats between your old and new clusters, so they must be\n"
       "reindexed with the REINDEX command.  The file\n"
       "    %s\n"
       "when executed by psql by the database superuser will recreate all invalid\n"
       "indexes; until then, none of these indexes will be used.\n\n",
       output_path);
 }
 else
  check_ok();
}
