
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pgdata; scalar_t__ bindir; } ;
struct TYPE_5__ {int check; } ;


 int MAXPGPATH ;
 int canonicalize_path (char*) ;
 int check_pghost_envvar () ;
 scalar_t__ find_my_exec (char*,char*) ;
 char* last_dir_separator (char*) ;
 TYPE_2__ new_cluster ;
 TYPE_2__ old_cluster ;
 int pg_fatal (char*,...) ;
 scalar_t__ pg_strdup (char*) ;
 scalar_t__ pid_lock_file_exists (int ) ;
 scalar_t__ start_postmaster (TYPE_2__*,int) ;
 int stop_postmaster (int) ;
 TYPE_1__ user_opts ;
 int verify_directories () ;

__attribute__((used)) static void
setup(char *argv0, bool *live_check)
{




 check_pghost_envvar();






 if (!new_cluster.bindir)
 {
  char exec_path[MAXPGPATH];

  if (find_my_exec(argv0, exec_path) < 0)
   pg_fatal("%s: could not find own program executable\n", argv0);

  *last_dir_separator(exec_path) = '\0';
  canonicalize_path(exec_path);
  new_cluster.bindir = pg_strdup(exec_path);
 }

 verify_directories();


 if (pid_lock_file_exists(old_cluster.pgdata))
 {
  if (start_postmaster(&old_cluster, 0))
   stop_postmaster(0);
  else
  {
   if (!user_opts.check)
    pg_fatal("There seems to be a postmaster servicing the old cluster.\n"
       "Please shutdown that postmaster and try again.\n");
   else
    *live_check = 1;
  }
 }


 if (pid_lock_file_exists(new_cluster.pgdata))
 {
  if (start_postmaster(&new_cluster, 0))
   stop_postmaster(0);
  else
   pg_fatal("There seems to be a postmaster servicing the new cluster.\n"
      "Please shutdown that postmaster and try again.\n");
 }
}
