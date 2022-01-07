
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int new_path ;
struct TYPE_2__ {char* pgdata; } ;


 int MAXPGPATH ;
 int check_ok () ;
 TYPE_1__ new_cluster ;
 int pg_fatal (char*,char*) ;
 int prep_status (char*,char const*) ;
 int rmtree (char*,int) ;
 int snprintf (char*,int,char*,char*,char const*) ;

__attribute__((used)) static void
remove_new_subdir(const char *subdir, bool rmtopdir)
{
 char new_path[MAXPGPATH];

 prep_status("Deleting files from new %s", subdir);

 snprintf(new_path, sizeof(new_path), "%s/%s", new_cluster.pgdata, subdir);
 if (!rmtree(new_path, rmtopdir))
  pg_fatal("could not delete directory \"%s\"\n", new_path);

 check_ok();
}
