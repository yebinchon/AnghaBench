
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_5__ {int bindir; int bin_version; } ;
typedef TYPE_1__ ClusterInfo ;


 int GET_MAJOR_VERSION (int ) ;
 int PG_FATAL ;
 int S_ISDIR (int ) ;
 int errno ;
 int get_bin_version (TYPE_1__*) ;
 TYPE_1__ new_cluster ;
 int report_status (int ,char*,int ,...) ;
 scalar_t__ stat (int ,struct stat*) ;
 int strerror (int ) ;
 int validate_exec (int ,char*) ;

__attribute__((used)) static void
check_bin_dir(ClusterInfo *cluster)
{
 struct stat statBuf;


 if (stat(cluster->bindir, &statBuf) != 0)
  report_status(PG_FATAL, "check for \"%s\" failed: %s\n",
       cluster->bindir, strerror(errno));
 else if (!S_ISDIR(statBuf.st_mode))
  report_status(PG_FATAL, "\"%s\" is not a directory\n",
       cluster->bindir);

 validate_exec(cluster->bindir, "postgres");
 validate_exec(cluster->bindir, "pg_controldata");
 validate_exec(cluster->bindir, "pg_ctl");






 get_bin_version(cluster);


 if (GET_MAJOR_VERSION(cluster->bin_version) < 1000)
  validate_exec(cluster->bindir, "pg_resetxlog");
 else
  validate_exec(cluster->bindir, "pg_resetwal");

 if (cluster == &new_cluster)
 {





  validate_exec(cluster->bindir, "initdb");
  validate_exec(cluster->bindir, "pg_dump");
  validate_exec(cluster->bindir, "pg_dumpall");
  validate_exec(cluster->bindir, "pg_restore");
  validate_exec(cluster->bindir, "psql");
  validate_exec(cluster->bindir, "vacuumdb");
 }
}
