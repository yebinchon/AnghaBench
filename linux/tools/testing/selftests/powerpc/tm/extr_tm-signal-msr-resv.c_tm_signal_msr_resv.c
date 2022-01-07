
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_mask; int sa_sigaction; } ;


 int SA_SIGINFO ;
 int SIGSEGV ;
 int SIGUSR1 ;
 scalar_t__ SIG_ERR ;
 int SKIP_IF (int) ;
 int exit (int) ;
 int have_htm () ;
 int perror (char*) ;
 int raise (int ) ;
 scalar_t__ sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 scalar_t__ signal (int ,int ) ;
 int signal_segv ;
 int signal_usr1 ;

int tm_signal_msr_resv()
{
 struct sigaction act;

 SKIP_IF(!have_htm());

 act.sa_sigaction = signal_usr1;
 sigemptyset(&act.sa_mask);
 act.sa_flags = SA_SIGINFO;
 if (sigaction(SIGUSR1, &act, ((void*)0)) < 0) {
  perror("sigaction sigusr1");
  exit(1);
 }
 if (signal(SIGSEGV, signal_segv) == SIG_ERR)
  exit(1);

 raise(SIGUSR1);


 return 1;
}
