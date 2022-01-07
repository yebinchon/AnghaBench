
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int old_path ;
typedef int new_path ;
struct TYPE_2__ {char* pgdata; } ;


 int MAXPGPATH ;
 int PG_REPORT ;
 int check_ok () ;
 TYPE_1__ old_cluster ;
 int pg_fatal (char*,char*,char*) ;
 int pg_log (int ,char*,char*) ;
 scalar_t__ pg_mv_file (char*,char*) ;
 int prep_status (char*) ;
 int snprintf (char*,int,char*,char*) ;

void
disable_old_cluster(void)
{
 char old_path[MAXPGPATH],
    new_path[MAXPGPATH];


 prep_status("Adding \".old\" suffix to old global/pg_control");

 snprintf(old_path, sizeof(old_path), "%s/global/pg_control", old_cluster.pgdata);
 snprintf(new_path, sizeof(new_path), "%s/global/pg_control.old", old_cluster.pgdata);
 if (pg_mv_file(old_path, new_path) != 0)
  pg_fatal("Unable to rename %s to %s.\n", old_path, new_path);
 check_ok();

 pg_log(PG_REPORT, "\n"
     "If you want to start the old cluster, you will need to remove\n"
     "the \".old\" suffix from %s/global/pg_control.old.\n"
     "Because \"link\" mode was used, the old cluster cannot be safely\n"
     "started once the new cluster has been started.\n\n", old_cluster.pgdata);
}
