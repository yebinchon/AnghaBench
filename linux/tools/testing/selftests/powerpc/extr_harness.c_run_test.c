
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 scalar_t__ EINTR ;
 int KILL_TIMEOUT ;
 int SIGKILL ;
 int SIGTERM ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 int alarm (int) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fflush (int ) ;
 int fork () ;
 int kill (int,int ) ;
 int perror (char*) ;
 int printf (char*,...) ;
 int setpgid (int,int) ;
 int stdout ;
 int timeout ;
 int waitpid (int,int*,int ) ;

int run_test(int (test_function)(void), char *name)
{
 bool terminated;
 int rc, status;
 pid_t pid;


 fflush(stdout);

 pid = fork();
 if (pid == 0) {
  setpgid(0, 0);
  exit(test_function());
 } else if (pid == -1) {
  perror("fork");
  return 1;
 }

 setpgid(pid, pid);

 if (timeout != -1)

  alarm(timeout);
 terminated = 0;

wait:
 rc = waitpid(pid, &status, 0);
 if (rc == -1) {
  if (errno != EINTR) {
   printf("unknown error from waitpid\n");
   return 1;
  }

  if (terminated) {
   printf("!! force killing %s\n", name);
   kill(-pid, SIGKILL);
   return 1;
  } else {
   printf("!! killing %s\n", name);
   kill(-pid, SIGTERM);
   terminated = 1;
   alarm(KILL_TIMEOUT);
   goto wait;
  }
 }


 kill(-pid, SIGTERM);

 if (WIFEXITED(status))
  status = WEXITSTATUS(status);
 else {
  if (WIFSIGNALED(status))
   printf("!! child died by signal %d\n", WTERMSIG(status));
  else
   printf("!! child died by unknown cause\n");

  status = 1;
 }

 return status;
}
