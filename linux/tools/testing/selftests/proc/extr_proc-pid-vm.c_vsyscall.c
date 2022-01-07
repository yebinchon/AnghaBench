
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_sigaction; int sa_flags; } ;
struct rlimit {int member_1; int member_0; } ;
typedef scalar_t__ pid_t ;


 int RLIMIT_CORE ;
 int SA_SIGINFO ;
 int SIGSEGV ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int errno ;
 int exit (int) ;
 scalar_t__ fork () ;
 int fprintf (int ,char*,int) ;
 int g_vsyscall ;
 int memset (struct sigaction*,int ,int) ;
 int setrlimit (int ,struct rlimit*) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigaction_SIGSEGV ;
 int stderr ;
 int waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static void vsyscall(void)
{
 pid_t pid;
 int wstatus;

 pid = fork();
 if (pid < 0) {
  fprintf(stderr, "fork, errno %d\n", errno);
  exit(1);
 }
 if (pid == 0) {
  struct rlimit rlim = {0, 0};
  (void)setrlimit(RLIMIT_CORE, &rlim);


  struct sigaction act;
  memset(&act, 0, sizeof(struct sigaction));
  act.sa_flags = SA_SIGINFO;
  act.sa_sigaction = sigaction_SIGSEGV;
  (void)sigaction(SIGSEGV, &act, ((void*)0));

  *(volatile int *)0xffffffffff600000UL;
  exit(0);
 }
 waitpid(pid, &wstatus, 0);
 if (WIFEXITED(wstatus) && WEXITSTATUS(wstatus) == 0) {
  g_vsyscall = 1;
 }
}
