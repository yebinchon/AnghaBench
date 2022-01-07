
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_mask; int sa_sigaction; } ;
typedef long pid_t ;


 int FAIL_IF (int) ;
 int MAX_ATTEMPT ;
 int SA_SIGINFO ;
 int SIGUSR1 ;
 int SKIP_IF (int) ;
 int broken ;
 int exit (int) ;
 long getpid () ;
 int have_htm () ;
 int perror (char*) ;
 scalar_t__ sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int signal_usr1 ;
 long tm_signal_self_context_load (long,int *,int *,int *,int ) ;
 int vsxs ;

__attribute__((used)) static int tm_signal_context_chk()
{
 struct sigaction act;
 int i;
 long rc;
 pid_t pid = getpid();

 SKIP_IF(!have_htm());

 act.sa_sigaction = signal_usr1;
 sigemptyset(&act.sa_mask);
 act.sa_flags = SA_SIGINFO;
 if (sigaction(SIGUSR1, &act, ((void*)0)) < 0) {
  perror("sigaction sigusr1");
  exit(1);
 }

 i = 0;
 while (i < MAX_ATTEMPT && !broken) {






  rc = tm_signal_self_context_load(pid, ((void*)0), ((void*)0), ((void*)0), vsxs);
  FAIL_IF(rc != pid);
  i++;
 }

 return (broken);
}
