
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef int pid_t ;


 scalar_t__ EXIT_FAILURE ;
 scalar_t__ EXIT_SUCCESS ;
 int WCONTINUED ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 int WUNTRACED ;
 int die (char*,...) ;
 int exit (scalar_t__) ;
 int fork () ;
 scalar_t__ getuid () ;
 int setuid (scalar_t__) ;
 int waitpid (int,int*,int) ;

__attribute__((used)) static void test_setuid(uid_t child_uid, bool expect_success)
{
 pid_t cpid, w;
 int wstatus;

 cpid = fork();
 if (cpid == -1) {
  die("fork\n");
 }

 if (cpid == 0) {
  setuid(child_uid);
  if (getuid() == child_uid)
   exit(EXIT_SUCCESS);
  else
   exit(EXIT_FAILURE);
 } else {
  do {
   w = waitpid(cpid, &wstatus, WUNTRACED | WCONTINUED);
   if (w == -1) {
    die("waitpid\n");
   }

   if (WIFEXITED(wstatus)) {
    if (WEXITSTATUS(wstatus) == EXIT_SUCCESS) {
     if (expect_success) {
      return;
     } else {
      die("unexpected success\n");
     }
    } else {
     if (expect_success) {
      die("unexpected failure\n");
     } else {
      return;
     }
    }
   } else if (WIFSIGNALED(wstatus)) {
    if (WTERMSIG(wstatus) == 9) {
     if (expect_success)
      die("killed unexpectedly\n");
     else
      return;
    } else {
     die("unexpected signal: %d\n", wstatus);
    }
   } else {
    die("unexpected status: %d\n", wstatus);
   }
  } while (!WIFEXITED(wstatus) && !WIFSIGNALED(wstatus));
 }

 die("should not reach here\n");
}
