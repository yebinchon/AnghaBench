
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; scalar_t__ sa_flags; int sa_handler; } ;
typedef int pid_t ;


 int FAIL_IF (int) ;
 int MAX_ATTEMPT ;
 int SIGALRM ;
 int SIGUSR1 ;
 int TIMEOUT ;
 int alarm (int) ;
 int exit (int) ;
 int fail ;
 int fork () ;
 int fprintf (int ,char*,...) ;
 int getpid () ;
 int perror (char*) ;
 scalar_t__ sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int signal_handler ;
 long signal_self (int,int ) ;
 scalar_t__ signaled ;
 int stderr ;
 int waitpid (int,int *,int ) ;

__attribute__((used)) static int test_signal()
{
 int i;
 struct sigaction act;
 pid_t ppid = getpid();
 pid_t pid;

 act.sa_handler = signal_handler;
 act.sa_flags = 0;
 sigemptyset(&act.sa_mask);
 if (sigaction(SIGUSR1, &act, ((void*)0)) < 0) {
  perror("sigaction SIGUSR1");
  exit(1);
 }
 if (sigaction(SIGALRM, &act, ((void*)0)) < 0) {
  perror("sigaction SIGALRM");
  exit(1);
 }


 for(i = 0; i < 1000; i++) {
  pid = fork();
  if (pid == -1) {
   perror("fork");
   exit(1);
  }
  if (pid == 0) {
   signal_self(ppid, SIGUSR1);
   exit(1);
  } else {
   alarm(0);
   alarm(2);
   while (!signaled && !fail)
    asm volatile("": : :"memory");
   if (!signaled) {
    fprintf(stderr, "Didn't get signal from child\n");
    FAIL_IF(1);
   }

   waitpid(pid, ((void*)0), 0);
  }
 }

 for (i = 0; i < MAX_ATTEMPT; i++) {
  long rc;

  alarm(0);
  signaled = 0;
  alarm(TIMEOUT);
  rc = signal_self(ppid, SIGUSR1);
  if (rc) {
   fprintf(stderr, "(%d) Fail reason: %d rc=0x%lx",
     i, fail, rc);
   FAIL_IF(1);
  }
  while (!signaled && !fail)
   asm volatile("": : :"memory");
  if (!signaled) {
   fprintf(stderr, "(%d) Fail reason: %d rc=0x%lx",
     i, fail, rc);
   FAIL_IF(1);
  }
 }

 return 0;
}
