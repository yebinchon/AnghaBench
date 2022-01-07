
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * darray ;
 int preempt_fpu (int *,int *,int *) ;
 int pthread_self () ;
 int rand () ;
 int running ;
 int srand (int ) ;
 int threads_starting ;

void *preempt_fpu_c(void *p)
{
 int i;
 srand(pthread_self());
 for (i = 0; i < 21; i++)
  darray[i] = rand();


 preempt_fpu(darray, &threads_starting, &running);

 return p;
}
