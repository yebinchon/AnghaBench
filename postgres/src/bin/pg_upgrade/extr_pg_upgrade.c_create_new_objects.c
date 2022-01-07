
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sql_file_name ;
typedef int log_file_name ;
struct TYPE_10__ {int bindir; } ;
struct TYPE_7__ {int ndbs; TYPE_2__* dbs; } ;
struct TYPE_9__ {int major_version; TYPE_1__ dbarr; } ;
struct TYPE_8__ {int db_name; int db_oid; } ;
typedef TYPE_2__ DbInfo ;


 char* DB_DUMP_FILE_MASK ;
 char* DB_DUMP_LOG_FILE_MASK ;
 int GET_MAJOR_VERSION (int ) ;
 int MAXPGPATH ;
 int PG_STATUS ;
 int check_ok () ;
 int cluster_conn_opts (TYPE_4__*) ;
 int end_progress_output () ;
 int exec_prog (char*,int *,int,int,char*,int ,int ,char const*,char*) ;
 int get_db_and_rel_infos (TYPE_4__*) ;
 TYPE_4__ new_cluster ;
 TYPE_3__ old_cluster ;
 int parallel_exec_prog (char*,int *,char*,int ,int ,char const*,char*) ;
 int pg_log (int ,char*,int ) ;
 int prep_status (char*) ;
 int reap_child (int) ;
 int set_frozenxids (int) ;
 int snprintf (char*,int,char*,int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
create_new_objects(void)
{
 int dbnum;

 prep_status("Restoring database schemas in the new cluster\n");






 for (dbnum = 0; dbnum < old_cluster.dbarr.ndbs; dbnum++)
 {
  char sql_file_name[MAXPGPATH],
     log_file_name[MAXPGPATH];
  DbInfo *old_db = &old_cluster.dbarr.dbs[dbnum];
  const char *create_opts;


  if (strcmp(old_db->db_name, "template1") != 0)
   continue;

  pg_log(PG_STATUS, "%s", old_db->db_name);
  snprintf(sql_file_name, sizeof(sql_file_name), DB_DUMP_FILE_MASK, old_db->db_oid);
  snprintf(log_file_name, sizeof(log_file_name), DB_DUMP_LOG_FILE_MASK, old_db->db_oid);







  create_opts = "--clean --create";

  exec_prog(log_file_name,
      ((void*)0),
      1,
      1,
      "\"%s/pg_restore\" %s %s --exit-on-error --verbose "
      "--dbname postgres \"%s\"",
      new_cluster.bindir,
      cluster_conn_opts(&new_cluster),
      create_opts,
      sql_file_name);

  break;
 }

 for (dbnum = 0; dbnum < old_cluster.dbarr.ndbs; dbnum++)
 {
  char sql_file_name[MAXPGPATH],
     log_file_name[MAXPGPATH];
  DbInfo *old_db = &old_cluster.dbarr.dbs[dbnum];
  const char *create_opts;


  if (strcmp(old_db->db_name, "template1") == 0)
   continue;

  pg_log(PG_STATUS, "%s", old_db->db_name);
  snprintf(sql_file_name, sizeof(sql_file_name), DB_DUMP_FILE_MASK, old_db->db_oid);
  snprintf(log_file_name, sizeof(log_file_name), DB_DUMP_LOG_FILE_MASK, old_db->db_oid);







  if (strcmp(old_db->db_name, "postgres") == 0)
   create_opts = "--clean --create";
  else
   create_opts = "--create";

  parallel_exec_prog(log_file_name,
         ((void*)0),
         "\"%s/pg_restore\" %s %s --exit-on-error --verbose "
         "--dbname template1 \"%s\"",
         new_cluster.bindir,
         cluster_conn_opts(&new_cluster),
         create_opts,
         sql_file_name);
 }


 while (reap_child(1) == 1)
  ;

 end_progress_output();
 check_ok();





 if (GET_MAJOR_VERSION(old_cluster.major_version) < 903)
  set_frozenxids(1);


 get_db_and_rel_infos(&new_cluster);
}
