
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int filename ;
typedef int cmd_output ;
typedef int cmd ;
struct TYPE_4__ {char* pgconfig; char* pgdata; char* bindir; } ;
typedef int FILE ;
typedef TYPE_1__ ClusterInfo ;


 int MAXPGPATH ;
 int MAX_STRING ;
 int check_ok () ;
 int errno ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 TYPE_1__ old_cluster ;
 int pclose (int *) ;
 int pg_fatal (char*,char*,int ) ;
 void* pg_strdup (char*) ;
 int pg_strip_crlf (char*) ;
 int * popen (char*,char*) ;
 int prep_status (char*) ;
 int snprintf (char*,int,char*,char*,...) ;
 int strerror (int ) ;

void
adjust_data_dir(ClusterInfo *cluster)
{
 char filename[MAXPGPATH];
 char cmd[MAXPGPATH],
    cmd_output[MAX_STRING];
 FILE *fp,
      *output;


 cluster->pgconfig = pg_strdup(cluster->pgdata);


 snprintf(filename, sizeof(filename), "%s/postgresql.conf", cluster->pgconfig);
 if ((fp = fopen(filename, "r")) == ((void*)0))
  return;
 fclose(fp);


 snprintf(filename, sizeof(filename), "%s/PG_VERSION", cluster->pgconfig);
 if ((fp = fopen(filename, "r")) != ((void*)0))
 {
  fclose(fp);
  return;
 }



 if (cluster == &old_cluster)
  prep_status("Finding the real data directory for the source cluster");
 else
  prep_status("Finding the real data directory for the target cluster");






 snprintf(cmd, sizeof(cmd), "\"%s/postgres\" -D \"%s\" -C data_directory",
    cluster->bindir, cluster->pgconfig);

 if ((output = popen(cmd, "r")) == ((void*)0) ||
  fgets(cmd_output, sizeof(cmd_output), output) == ((void*)0))
  pg_fatal("could not get data directory using %s: %s\n",
     cmd, strerror(errno));

 pclose(output);


 (void) pg_strip_crlf(cmd_output);

 cluster->pgdata = pg_strdup(cmd_output);

 check_ok();
}
