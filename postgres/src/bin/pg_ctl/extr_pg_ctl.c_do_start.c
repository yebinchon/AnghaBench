
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pgpid_t ;
typedef int env_var ;


 int CloseHandle (int ) ;
 int INVALID_HANDLE_VALUE ;
 int PG_BACKEND_VERSIONSTR ;



 scalar_t__ RESTART_COMMAND ;
 int SIGINT ;
 int _ (char*) ;
 scalar_t__ allow_core_files ;
 int argv0 ;
 scalar_t__ ctl_command ;
 scalar_t__ do_wait ;
 int * exec_path ;
 int exit (int) ;
 int * find_other_exec_or_die (int ,char*,int ) ;
 scalar_t__ get_pgpid (int) ;
 scalar_t__ getppid () ;
 char* pgdata_opt ;
 scalar_t__ postmasterPID ;
 int postmasterProcess ;
 int pqsignal (int ,int ) ;
 int print_msg (int ) ;
 int progname ;
 int putenv (char*) ;
 int read_post_opts () ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ start_postmaster () ;
 int trap_sigint_during_startup ;
 int unlimit_core_size () ;
 int wait_for_postmaster (scalar_t__,int) ;
 int write_stderr (int ,int ) ;

__attribute__((used)) static void
do_start(void)
{
 pgpid_t old_pid = 0;
 pgpid_t pm_pid;

 if (ctl_command != RESTART_COMMAND)
 {
  old_pid = get_pgpid(0);
  if (old_pid != 0)
   write_stderr(_("%s: another server might be running; "
         "trying to start server anyway\n"),
       progname);
 }

 read_post_opts();


 if (ctl_command == RESTART_COMMAND || pgdata_opt == ((void*)0))
  pgdata_opt = "";

 if (exec_path == ((void*)0))
  exec_path = find_other_exec_or_die(argv0, "postgres", PG_BACKEND_VERSIONSTR);
 {
  static char env_var[32];

  snprintf(env_var, sizeof(env_var), "PG_GRANDPARENT_PID=%d",
     (int) getppid());
  putenv(env_var);
 }


 pm_pid = start_postmaster();

 if (do_wait)
 {
  postmasterPID = pm_pid;
  pqsignal(SIGINT, trap_sigint_during_startup);

  print_msg(_("waiting for server to start..."));

  switch (wait_for_postmaster(pm_pid, 0))
  {
   case 129:
    print_msg(_(" done\n"));
    print_msg(_("server started\n"));
    break;
   case 128:
    print_msg(_(" stopped waiting\n"));
    write_stderr(_("%s: server did not start in time\n"),
        progname);
    exit(1);
    break;
   case 130:
    print_msg(_(" stopped waiting\n"));
    write_stderr(_("%s: could not start server\n"
          "Examine the log output.\n"),
        progname);
    exit(1);
    break;
  }
 }
 else
  print_msg(_("server starting\n"));






}
