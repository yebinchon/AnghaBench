
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAST_MODE ;
 int IMMEDIATE_MODE ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 int SMART_MODE ;
 int _ (char*) ;
 int do_advice () ;
 int exit (int) ;
 int progname ;
 int shutdown_mode ;
 int sig ;
 scalar_t__ strcmp (char*,char*) ;
 int write_stderr (int ,int ,char*) ;

__attribute__((used)) static void
set_mode(char *modeopt)
{
 if (strcmp(modeopt, "s") == 0 || strcmp(modeopt, "smart") == 0)
 {
  shutdown_mode = SMART_MODE;
  sig = SIGTERM;
 }
 else if (strcmp(modeopt, "f") == 0 || strcmp(modeopt, "fast") == 0)
 {
  shutdown_mode = FAST_MODE;
  sig = SIGINT;
 }
 else if (strcmp(modeopt, "i") == 0 || strcmp(modeopt, "immediate") == 0)
 {
  shutdown_mode = IMMEDIATE_MODE;
  sig = SIGQUIT;
 }
 else
 {
  write_stderr(_("%s: unrecognized shutdown mode \"%s\"\n"), progname, modeopt);
  do_advice();
  exit(1);
 }
}
