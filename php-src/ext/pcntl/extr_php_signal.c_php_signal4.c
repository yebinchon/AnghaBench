
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int * sa_handler; int * sa_sigaction; int sa_flags; int sa_mask; } ;
typedef int Sigfunc ;


 int SA_INTERRUPT ;
 int SA_RESTART ;
 int SA_SIGINFO ;
 scalar_t__ SIG_ERR ;
 int sigemptyset (int *) ;
 int sigfillset (int *) ;
 scalar_t__ zend_sigaction (int,struct sigaction*,struct sigaction*) ;

Sigfunc *php_signal4(int signo, Sigfunc *func, int restart, int mask_all)
{
 struct sigaction act,oact;




 act.sa_handler = func;

 if (mask_all) {
  sigfillset(&act.sa_mask);
 } else {
  sigemptyset(&act.sa_mask);
 }
 act.sa_flags = 0;



 if (!restart) {



 } else {



 }
 if (zend_sigaction(signo, &act, &oact) < 0) {
  return (Sigfunc*)SIG_ERR;
 }




 return oact.sa_handler;

}
