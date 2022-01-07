
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; int sa_flags; int sa_mask; } ;
typedef int pqsigfunc ;


 int SA_NOCLDSTOP ;
 int SA_RESTART ;
 int SIGALRM ;
 int SIGCHLD ;
 int SIG_ERR ;
 scalar_t__ sigaction (int,struct sigaction*,struct sigaction*) ;
 int sigemptyset (int *) ;
 int signal (int,int ) ;

pqsigfunc
pqsignal(int signo, pqsigfunc func)
{

 struct sigaction act,
    oact;

 act.sa_handler = func;
 sigemptyset(&act.sa_mask);
 act.sa_flags = 0;
 if (signo != SIGALRM)
  act.sa_flags |= SA_RESTART;




 if (sigaction(signo, &act, &oact) < 0)
  return SIG_ERR;
 return oact.sa_handler;



}
