
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_handler; int sa_flags; int sa_mask; } ;
typedef scalar_t__ pqsigfunc ;


 int BlockSig ;
 int SA_NOCLDSTOP ;
 int SA_RESTART ;
 int SIGCHLD ;
 scalar_t__ SIG_DFL ;
 scalar_t__ SIG_ERR ;
 scalar_t__ SIG_IGN ;
 scalar_t__ pqsignal (int,scalar_t__) ;
 scalar_t__ sigaction (int,struct sigaction*,struct sigaction*) ;
 int sigemptyset (int *) ;

pqsigfunc
pqsignal_pm(int signo, pqsigfunc func)
{

 struct sigaction act,
    oact;

 act.sa_handler = func;
 if (func == SIG_IGN || func == SIG_DFL)
 {

  sigemptyset(&act.sa_mask);
  act.sa_flags = SA_RESTART;
 }
 else
 {
  act.sa_mask = BlockSig;
  act.sa_flags = 0;
 }




 if (sigaction(signo, &act, &oact) < 0)
  return SIG_ERR;
 return oact.sa_handler;



}
