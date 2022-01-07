
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int full_path ;


 char* DEVNULL ;
 int MAXCMDLEN ;
 int MAXPGPATH ;
 int PG_BACKEND_VERSIONSTR ;
 char* datadir_target ;
 scalar_t__ dry_run ;
 scalar_t__ find_my_exec (char const*,char*) ;
 int find_other_exec (char const*,char*,int ,char*) ;
 int pg_fatal (char*,char*,...) ;
 int pg_log_error (char*) ;
 int pg_log_info (char*,char*) ;
 int progname ;
 int snprintf (char*,int,char*,char*,char*,char*) ;
 int strlcpy (char*,int ,int) ;
 scalar_t__ system (char*) ;

__attribute__((used)) static void
ensureCleanShutdown(const char *argv0)
{
 int ret;

 char exec_path[MAXPGPATH];
 char cmd[(2 * MAXPGPATH)];


 if ((ret = find_other_exec(argv0, "postgres",
          PG_BACKEND_VERSIONSTR,
          exec_path)) < 0)
 {
  char full_path[MAXPGPATH];

  if (find_my_exec(argv0, full_path) < 0)
   strlcpy(full_path, progname, sizeof(full_path));

  if (ret == -1)
   pg_fatal("The program \"%s\" is needed by %s but was\n"
      "not found in the same directory as \"%s\".\n"
      "Check your installation.",
      "postgres", progname, full_path);
  else
   pg_fatal("The program \"%s\" was found by \"%s\" but was\n"
      "not the same version as %s.\n"
      "Check your installation.",
      "postgres", full_path, progname);
 }

 pg_log_info("executing \"%s\" for target server to complete crash recovery",
    exec_path);





 if (dry_run)
  return;






 snprintf(cmd, (2 * MAXPGPATH), "\"%s\" --single -F -D \"%s\" template1 < \"%s\"",
    exec_path, datadir_target, DEVNULL);

 if (system(cmd) != 0)
 {
  pg_log_error("postgres single-user mode of target instance failed");
  pg_fatal("Command was: %s", cmd);
 }
}
