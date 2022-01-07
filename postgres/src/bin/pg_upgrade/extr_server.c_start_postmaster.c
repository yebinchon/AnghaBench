
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int socket_string ;
typedef int cmd ;
struct TYPE_10__ {TYPE_2__* running_cluster; } ;
struct TYPE_8__ {scalar_t__ cat_ver; } ;
struct TYPE_9__ {char* sockdir; char* bindir; char* pgconfig; int port; char* pgopts; TYPE_1__ controldata; int major_version; } ;
typedef int PGconn ;
typedef TYPE_2__ ClusterInfo ;


 scalar_t__ BINARY_UPGRADE_SERVER_FLAG_CAT_VER ;
 scalar_t__ CONNECTION_OK ;
 int GET_MAJOR_VERSION (int ) ;
 int MAXPGPATH ;
 int PG_REPORT ;
 int PQerrorMessage (int *) ;
 int PQfinish (int *) ;
 scalar_t__ PQstatus (int *) ;
 char* SERVER_LOG_FILE ;
 int SERVER_START_LOG_FILE ;
 int atexit (int ) ;
 int exec_prog (int ,char*,int,int,char*,char*) ;
 int * get_db_conn (TYPE_2__*,char*) ;
 TYPE_2__ new_cluster ;
 TYPE_2__ old_cluster ;
 TYPE_4__ os_info ;
 int pg_fatal (char*,...) ;
 int pg_log (int ,char*,int ) ;
 int snprintf (char*,int,char*,char*,char*,...) ;
 int stop_postmaster_atexit ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlen (char*) ;

bool
start_postmaster(ClusterInfo *cluster, bool report_and_exit_on_error)
{
 char cmd[MAXPGPATH * 4 + 1000];
 PGconn *conn;
 bool pg_ctl_return = 0;
 char socket_string[MAXPGPATH + 200];

 static bool exit_hook_registered = 0;

 if (!exit_hook_registered)
 {
  atexit(stop_postmaster_atexit);
  exit_hook_registered = 1;
 }

 socket_string[0] = '\0';
 snprintf(cmd, sizeof(cmd),
    "\"%s/pg_ctl\" -w -l \"%s\" -D \"%s\" -o \"-p %d%s%s %s%s\" start",
    cluster->bindir, SERVER_LOG_FILE, cluster->pgconfig, cluster->port,
    (cluster->controldata.cat_ver >=
     BINARY_UPGRADE_SERVER_FLAG_CAT_VER) ? " -b" :
    " -c autovacuum=off -c autovacuum_freeze_max_age=2000000000",
    (cluster == &new_cluster) ?
    " -c synchronous_commit=off -c fsync=off -c full_page_writes=off" : "",
    cluster->pgopts ? cluster->pgopts : "", socket_string);





 pg_ctl_return = exec_prog(SERVER_START_LOG_FILE,

         (strcmp(SERVER_LOG_FILE,
           SERVER_START_LOG_FILE) != 0) ?
         SERVER_LOG_FILE : ((void*)0),
         report_and_exit_on_error, 0,
         "%s", cmd);


 if (!pg_ctl_return && !report_and_exit_on_error)
  return 0;
 if (pg_ctl_return)
  os_info.running_cluster = cluster;







 if ((conn = get_db_conn(cluster, "template1")) == ((void*)0) ||
  PQstatus(conn) != CONNECTION_OK)
 {
  pg_log(PG_REPORT, "\nconnection to database failed: %s",
      PQerrorMessage(conn));
  if (conn)
   PQfinish(conn);
  if (cluster == &old_cluster)
   pg_fatal("could not connect to source postmaster started with the command:\n"
      "%s\n",
      cmd);
  else
   pg_fatal("could not connect to target postmaster started with the command:\n"
      "%s\n",
      cmd);
 }
 PQfinish(conn);






 if (!pg_ctl_return)
 {
  if (cluster == &old_cluster)
   pg_fatal("pg_ctl failed to start the source server, or connection failed\n");
  else
   pg_fatal("pg_ctl failed to start the target server, or connection failed\n");
 }

 return 1;
}
