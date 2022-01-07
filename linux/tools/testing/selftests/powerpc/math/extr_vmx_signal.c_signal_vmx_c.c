
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_sigaction; } ;


 int SA_SIGINFO ;
 int SIGUSR1 ;
 long preempt_vmx (int **,int *,int *) ;
 int pthread_self () ;
 int rand () ;
 int running ;
 long sigaction (int ,struct sigaction*,int *) ;
 int signal_vmx_sig ;
 int srand (int ) ;
 int threads_starting ;
 int ** varray ;

void *signal_vmx_c(void *p)
{
 int i, j;
 long rc;
 struct sigaction act;
 act.sa_sigaction = signal_vmx_sig;
 act.sa_flags = SA_SIGINFO;
 rc = sigaction(SIGUSR1, &act, ((void*)0));
 if (rc)
  return p;

 srand(pthread_self());
 for (i = 0; i < 12; i++)
  for (j = 0; j < 4; j++)
   varray[i][j] = rand();

 rc = preempt_vmx(varray, &threads_starting, &running);

 return (void *) rc;
}
