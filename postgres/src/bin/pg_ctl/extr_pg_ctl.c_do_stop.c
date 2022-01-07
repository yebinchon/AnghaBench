
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int pid_t ;
typedef scalar_t__ pgpid_t ;


 scalar_t__ DB_IN_ARCHIVE_RECOVERY ;
 scalar_t__ SMART_MODE ;
 int USEC_PER_SEC ;
 int WAITS_PER_SEC ;
 char* _ (char*) ;
 int backup_file ;
 int do_wait ;
 int errno ;
 int exit (int) ;
 scalar_t__ get_control_dbstate () ;
 scalar_t__ get_pgpid (int) ;
 scalar_t__ kill (int ,int ) ;
 int pg_usleep (int) ;
 int pid_file ;
 int print_msg (char*) ;
 int progname ;
 scalar_t__ shutdown_mode ;
 int sig ;
 scalar_t__ stat (int ,struct stat*) ;
 int strerror (int ) ;
 int wait_seconds ;
 int write_stderr (char*,...) ;

__attribute__((used)) static void
do_stop(void)
{
 int cnt;
 pgpid_t pid;
 struct stat statbuf;

 pid = get_pgpid(0);

 if (pid == 0)
 {
  write_stderr(_("%s: PID file \"%s\" does not exist\n"), progname, pid_file);
  write_stderr(_("Is server running?\n"));
  exit(1);
 }
 else if (pid < 0)
 {
  pid = -pid;
  write_stderr(_("%s: cannot stop server; "
        "single-user server is running (PID: %ld)\n"),
      progname, pid);
  exit(1);
 }

 if (kill((pid_t) pid, sig) != 0)
 {
  write_stderr(_("%s: could not send stop signal (PID: %ld): %s\n"), progname, pid,
      strerror(errno));
  exit(1);
 }

 if (!do_wait)
 {
  print_msg(_("server shutting down\n"));
  return;
 }
 else
 {






  if (shutdown_mode == SMART_MODE &&
   stat(backup_file, &statbuf) == 0 &&
   get_control_dbstate() != DB_IN_ARCHIVE_RECOVERY)
  {
   print_msg(_("WARNING: online backup mode is active\n"
      "Shutdown will not complete until pg_stop_backup() is called.\n\n"));
  }

  print_msg(_("waiting for server to shut down..."));

  for (cnt = 0; cnt < wait_seconds * WAITS_PER_SEC; cnt++)
  {
   if ((pid = get_pgpid(0)) != 0)
   {
    if (cnt % WAITS_PER_SEC == 0)
     print_msg(".");
    pg_usleep(USEC_PER_SEC / WAITS_PER_SEC);
   }
   else
    break;
  }

  if (pid != 0)
  {
   print_msg(_(" failed\n"));

   write_stderr(_("%s: server does not shut down\n"), progname);
   if (shutdown_mode == SMART_MODE)
    write_stderr(_("HINT: The \"-m fast\" option immediately disconnects sessions rather than\n"
          "waiting for session-initiated disconnection.\n"));
   exit(1);
  }
  print_msg(_(" done\n"));

  print_msg(_("server stopped\n"));
 }
}
