
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_sigaction; } ;


 int SA_SIGINFO ;
 int SIGUSR1 ;
 int * darray ;
 long preempt_fpu (int *,int *,int *) ;
 int pthread_self () ;
 int rand () ;
 int running ;
 long sigaction (int ,struct sigaction*,int *) ;
 int signal_fpu_sig ;
 int srand (int ) ;
 int threads_starting ;

void *signal_fpu_c(void *p)
{
 int i;
 long rc;
 struct sigaction act;
 act.sa_sigaction = signal_fpu_sig;
 act.sa_flags = SA_SIGINFO;
 rc = sigaction(SIGUSR1, &act, ((void*)0));
 if (rc)
  return p;

 srand(pthread_self());
 for (i = 0; i < 21; i++)
  darray[i] = rand();

 rc = preempt_fpu(darray, &threads_starting, &running);

 return (void *) rc;
}
