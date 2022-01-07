
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* pgdata; int major_version; } ;
typedef TYPE_1__ ClusterInfo ;


 int GET_MAJOR_VERSION (int ) ;
 int check_single_dir (char const*,char*) ;
 int get_major_server_version (TYPE_1__*) ;

__attribute__((used)) static void
check_data_dir(ClusterInfo *cluster)
{
 const char *pg_data = cluster->pgdata;


 cluster->major_version = get_major_server_version(cluster);

 check_single_dir(pg_data, "");
 check_single_dir(pg_data, "base");
 check_single_dir(pg_data, "global");
 check_single_dir(pg_data, "pg_multixact");
 check_single_dir(pg_data, "pg_subtrans");
 check_single_dir(pg_data, "pg_tblspc");
 check_single_dir(pg_data, "pg_twophase");


 if (GET_MAJOR_VERSION(cluster->major_version) < 1000)
  check_single_dir(pg_data, "pg_xlog");
 else
  check_single_dir(pg_data, "pg_wal");


 if (GET_MAJOR_VERSION(cluster->major_version) < 1000)
  check_single_dir(pg_data, "pg_clog");
 else
  check_single_dir(pg_data, "pg_xact");
}
