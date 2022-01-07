
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ verbose; } ;
struct TYPE_4__ {int bindir; } ;


 int UTILITY_LOG_FILE ;
 int check_ok () ;
 int cluster_conn_opts (TYPE_1__*) ;
 int exec_prog (int ,int *,int,int,char*,int ,int ,char*) ;
 TYPE_2__ log_opts ;
 TYPE_1__ new_cluster ;
 int prep_status (char*) ;

__attribute__((used)) static void
prepare_new_cluster(void)
{





 prep_status("Analyzing all rows in the new cluster");
 exec_prog(UTILITY_LOG_FILE, ((void*)0), 1, 1,
     "\"%s/vacuumdb\" %s --all --analyze %s",
     new_cluster.bindir, cluster_conn_opts(&new_cluster),
     log_opts.verbose ? "--verbose" : "");
 check_ok();







 prep_status("Freezing all rows in the new cluster");
 exec_prog(UTILITY_LOG_FILE, ((void*)0), 1, 1,
     "\"%s/vacuumdb\" %s --all --freeze %s",
     new_cluster.bindir, cluster_conn_opts(&new_cluster),
     log_opts.verbose ? "--verbose" : "");
 check_ok();
}
