
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 int _ (char*) ;
 int pg_strsignal (int) ;
 int status (int ,int,...) ;

__attribute__((used)) static void
log_child_failure(int exitstatus)
{
 if (WIFEXITED(exitstatus))
  status(_(" (test process exited with exit code %d)"),
      WEXITSTATUS(exitstatus));
 else if (WIFSIGNALED(exitstatus))
 {




  status(_(" (test process was terminated by signal %d: %s)"),
      WTERMSIG(exitstatus), pg_strsignal(WTERMSIG(exitstatus)));

 }
 else
  status(_(" (test process exited with unrecognized status %d)"),
      exitstatus);
}
