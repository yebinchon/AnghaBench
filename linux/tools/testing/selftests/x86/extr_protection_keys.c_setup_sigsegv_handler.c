
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_restorer; int sa_flags; int sa_mask; int sa_sigaction; scalar_t__ sa_handler; } ;


 int SA_SIGINFO ;
 int SIGALRM ;
 int SIGSEGV ;
 int SIG_SETMASK ;
 int pkey_assert (int) ;
 int sigaction (int,struct sigaction*,struct sigaction*) ;
 int signal_handler ;
 int sigprocmask (int ,int ,int *) ;

void setup_sigsegv_handler(void)
{
 int r, rs;
 struct sigaction newact;
 struct sigaction oldact;


 int signum = SIGSEGV;

 newact.sa_handler = 0;
 newact.sa_sigaction = signal_handler;



 rs = sigprocmask(SIG_SETMASK, 0, &newact.sa_mask);
 pkey_assert(rs == 0);


 newact.sa_flags = SA_SIGINFO;

 newact.sa_restorer = 0;
 r = sigaction(signum, &newact, &oldact);
 r = sigaction(SIGALRM, &newact, &oldact);
 pkey_assert(r == 0);
}
