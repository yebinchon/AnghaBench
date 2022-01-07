
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGABRT ;
 int SIGHUP ;
 int SIGINT ;
 int SIGKILL ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int _ (char*) ;
 int do_advice () ;
 int exit (int) ;
 int progname ;
 int sig ;
 scalar_t__ strcmp (char*,char*) ;
 int write_stderr (int ,int ,char*) ;

__attribute__((used)) static void
set_sig(char *signame)
{
 if (strcmp(signame, "HUP") == 0)
  sig = SIGHUP;
 else if (strcmp(signame, "INT") == 0)
  sig = SIGINT;
 else if (strcmp(signame, "QUIT") == 0)
  sig = SIGQUIT;
 else if (strcmp(signame, "ABRT") == 0)
  sig = SIGABRT;
 else if (strcmp(signame, "KILL") == 0)
  sig = SIGKILL;
 else if (strcmp(signame, "TERM") == 0)
  sig = SIGTERM;
 else if (strcmp(signame, "USR1") == 0)
  sig = SIGUSR1;
 else if (strcmp(signame, "USR2") == 0)
  sig = SIGUSR2;
 else
 {
  write_stderr(_("%s: unrecognized signal name \"%s\"\n"), progname, signame);
  do_advice();
  exit(1);
 }
}
