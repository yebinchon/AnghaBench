
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int argc; char** argv; char* prefix; char* pid; int run_as_root; int force_stderr; scalar_t__ parent_pid; scalar_t__ test_successful; int config; } ;


 int FPM_EXIT_OK ;
 int ZLOG_ERROR ;
 int ZLOG_NOTICE ;
 int exit (int ) ;
 scalar_t__ fpm_children_init_main () ;
 scalar_t__ fpm_conf_init_main (int,int) ;
 scalar_t__ fpm_conf_write_pid () ;
 scalar_t__ fpm_env_init_main () ;
 scalar_t__ fpm_event_init_main () ;
 TYPE_1__ fpm_globals ;
 scalar_t__ fpm_pctl_init_main () ;
 scalar_t__ fpm_php_init_main () ;
 scalar_t__ fpm_scoreboard_init_main () ;
 scalar_t__ fpm_signals_init_main () ;
 scalar_t__ fpm_sockets_init_main () ;
 int fpm_stdio_init_final () ;
 scalar_t__ fpm_stdio_init_main () ;
 scalar_t__ fpm_unix_init_main () ;
 scalar_t__ fpm_worker_pool_init_main () ;
 int strdup (char*) ;
 int zlog (int ,char*,...) ;

int fpm_init(int argc, char **argv, char *config, char *prefix, char *pid, int test_conf, int run_as_root, int force_daemon, int force_stderr)
{
 fpm_globals.argc = argc;
 fpm_globals.argv = argv;
 if (config && *config) {
  fpm_globals.config = strdup(config);
 }
 fpm_globals.prefix = prefix;
 fpm_globals.pid = pid;
 fpm_globals.run_as_root = run_as_root;
 fpm_globals.force_stderr = force_stderr;

 if (0 > fpm_php_init_main() ||
     0 > fpm_stdio_init_main() ||
     0 > fpm_conf_init_main(test_conf, force_daemon) ||
     0 > fpm_unix_init_main() ||
     0 > fpm_scoreboard_init_main() ||
     0 > fpm_pctl_init_main() ||
     0 > fpm_env_init_main() ||
     0 > fpm_signals_init_main() ||
     0 > fpm_children_init_main() ||
     0 > fpm_sockets_init_main() ||
     0 > fpm_worker_pool_init_main() ||
     0 > fpm_event_init_main()) {

  if (fpm_globals.test_successful) {
   exit(FPM_EXIT_OK);
  } else {
   zlog(ZLOG_ERROR, "FPM initialization failed");
   return -1;
  }
 }

 if (0 > fpm_conf_write_pid()) {
  zlog(ZLOG_ERROR, "FPM initialization failed");
  return -1;
 }

 fpm_stdio_init_final();
 zlog(ZLOG_NOTICE, "fpm is running, pid %d", (int) fpm_globals.parent_pid);

 return 0;
}
