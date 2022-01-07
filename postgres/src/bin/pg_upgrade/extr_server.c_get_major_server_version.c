
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ver_filename ;
typedef int uint32 ;
struct TYPE_3__ {char* pgdata; int major_version_str; } ;
typedef int FILE ;
typedef TYPE_1__ ClusterInfo ;


 int MAXPGPATH ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fscanf (int *,char*,int ) ;
 int pg_fatal (char*,char*) ;
 int snprintf (char*,int,char*,char*) ;
 int sscanf (int ,char*,int*,int*) ;

uint32
get_major_server_version(ClusterInfo *cluster)
{
 FILE *version_fd;
 char ver_filename[MAXPGPATH];
 int v1 = 0,
    v2 = 0;

 snprintf(ver_filename, sizeof(ver_filename), "%s/PG_VERSION",
    cluster->pgdata);
 if ((version_fd = fopen(ver_filename, "r")) == ((void*)0))
  pg_fatal("could not open version file: %s\n", ver_filename);

 if (fscanf(version_fd, "%63s", cluster->major_version_str) == 0 ||
  sscanf(cluster->major_version_str, "%d.%d", &v1, &v2) < 1)
  pg_fatal("could not parse PG_VERSION file from %s\n", cluster->pgdata);

 fclose(version_fd);

 if (v1 < 10)
 {

  return v1 * 10000 + v2 * 100;
 }
 else
 {

  return v1 * 10000;
 }
}
