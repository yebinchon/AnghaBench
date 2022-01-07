
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmd_output ;
typedef int cmd ;
struct TYPE_3__ {char* bindir; int bin_version; } ;
typedef int FILE ;
typedef TYPE_1__ ClusterInfo ;


 int MAXPGPATH ;
 int MAX_STRING ;
 int errno ;
 int * fgets (char*,int,int *) ;
 int pclose (int *) ;
 int pg_fatal (char*,char*,...) ;
 int * popen (char*,char*) ;
 int snprintf (char*,int,char*,char*) ;
 int sscanf (char*,char*,int*,int*) ;
 int strerror (int ) ;

__attribute__((used)) static void
get_bin_version(ClusterInfo *cluster)
{
 char cmd[MAXPGPATH],
    cmd_output[MAX_STRING];
 FILE *output;
 int v1 = 0,
    v2 = 0;

 snprintf(cmd, sizeof(cmd), "\"%s/pg_ctl\" --version", cluster->bindir);

 if ((output = popen(cmd, "r")) == ((void*)0) ||
  fgets(cmd_output, sizeof(cmd_output), output) == ((void*)0))
  pg_fatal("could not get pg_ctl version data using %s: %s\n",
     cmd, strerror(errno));

 pclose(output);

 if (sscanf(cmd_output, "%*s %*s %d.%d", &v1, &v2) < 1)
  pg_fatal("could not get pg_ctl version output from %s\n", cmd);

 if (v1 < 10)
 {

  cluster->bin_version = v1 * 10000 + v2 * 100;
 }
 else
 {

  cluster->bin_version = v1 * 10000;
 }
}
