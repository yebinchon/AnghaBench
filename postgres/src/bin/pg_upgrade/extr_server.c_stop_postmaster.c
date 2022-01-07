
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* running_cluster; } ;
struct TYPE_5__ {char* pgopts; int pgconfig; int bindir; } ;
typedef TYPE_1__ ClusterInfo ;


 int SERVER_STOP_LOG_FILE ;
 int exec_prog (int ,int *,int,int,char*,int ,int ,char*,char*) ;
 TYPE_1__ new_cluster ;
 TYPE_1__ old_cluster ;
 TYPE_2__ os_info ;

void
stop_postmaster(bool in_atexit)
{
 ClusterInfo *cluster;

 if (os_info.running_cluster == &old_cluster)
  cluster = &old_cluster;
 else if (os_info.running_cluster == &new_cluster)
  cluster = &new_cluster;
 else
  return;

 exec_prog(SERVER_STOP_LOG_FILE, ((void*)0), !in_atexit, !in_atexit,
     "\"%s/pg_ctl\" -w -D \"%s\" -o \"%s\" %s stop",
     cluster->bindir, cluster->pgconfig,
     cluster->pgopts ? cluster->pgopts : "",
     in_atexit ? "-m fast" : "-m smart");

 os_info.running_cluster = ((void*)0);
}
