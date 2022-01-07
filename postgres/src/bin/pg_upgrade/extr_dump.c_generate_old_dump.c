
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int sql_file_name ;
typedef int log_file_name ;
struct TYPE_18__ {scalar_t__ verbose; } ;
struct TYPE_17__ {int bindir; } ;
struct TYPE_13__ {int ndbs; TYPE_3__* dbs; } ;
struct TYPE_16__ {TYPE_1__ dbarr; } ;
struct TYPE_15__ {int db_oid; int db_name; } ;
struct TYPE_14__ {int data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef TYPE_3__ DbInfo ;


 char* DB_DUMP_FILE_MASK ;
 char* DB_DUMP_LOG_FILE_MASK ;
 int GLOBALS_DUMP_FILE ;
 int MAXPGPATH ;
 int PG_STATUS ;
 int UTILITY_LOG_FILE ;
 int appendConnStrVal (TYPE_2__*,int ) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 int appendShellString (TYPE_2__*,int ) ;
 int check_ok () ;
 int cluster_conn_opts (TYPE_5__*) ;
 int end_progress_output () ;
 int exec_prog (int ,int *,int,int,char*,int ,int ,char*,int ) ;
 int initPQExpBuffer (TYPE_2__*) ;
 TYPE_7__ log_opts ;
 TYPE_6__ new_cluster ;
 TYPE_5__ old_cluster ;
 int parallel_exec_prog (char*,int *,char*,int ,int ,char*,char*,int ) ;
 int pg_log (int ,char*,int ) ;
 int prep_status (char*) ;
 int reap_child (int) ;
 int snprintf (char*,int,char*,int ) ;
 int termPQExpBuffer (TYPE_2__*) ;

void
generate_old_dump(void)
{
 int dbnum;

 prep_status("Creating dump of global objects");


 exec_prog(UTILITY_LOG_FILE, ((void*)0), 1, 1,
     "\"%s/pg_dumpall\" %s --globals-only --quote-all-identifiers "
     "--binary-upgrade %s -f %s",
     new_cluster.bindir, cluster_conn_opts(&old_cluster),
     log_opts.verbose ? "--verbose" : "",
     GLOBALS_DUMP_FILE);
 check_ok();

 prep_status("Creating dump of database schemas\n");


 for (dbnum = 0; dbnum < old_cluster.dbarr.ndbs; dbnum++)
 {
  char sql_file_name[MAXPGPATH],
     log_file_name[MAXPGPATH];
  DbInfo *old_db = &old_cluster.dbarr.dbs[dbnum];
  PQExpBufferData connstr,
     escaped_connstr;

  initPQExpBuffer(&connstr);
  appendPQExpBufferStr(&connstr, "dbname=");
  appendConnStrVal(&connstr, old_db->db_name);
  initPQExpBuffer(&escaped_connstr);
  appendShellString(&escaped_connstr, connstr.data);
  termPQExpBuffer(&connstr);

  pg_log(PG_STATUS, "%s", old_db->db_name);
  snprintf(sql_file_name, sizeof(sql_file_name), DB_DUMP_FILE_MASK, old_db->db_oid);
  snprintf(log_file_name, sizeof(log_file_name), DB_DUMP_LOG_FILE_MASK, old_db->db_oid);

  parallel_exec_prog(log_file_name, ((void*)0),
         "\"%s/pg_dump\" %s --schema-only --quote-all-identifiers "
         "--binary-upgrade --format=custom %s --file=\"%s\" %s",
         new_cluster.bindir, cluster_conn_opts(&old_cluster),
         log_opts.verbose ? "--verbose" : "",
         sql_file_name, escaped_connstr.data);

  termPQExpBuffer(&escaped_connstr);
 }


 while (reap_child(1) == 1)
  ;

 end_progress_output();
 check_ok();
}
