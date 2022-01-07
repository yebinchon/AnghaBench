
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int preempt_vmx (int **,int *,int *) ;
 int pthread_self () ;
 int rand () ;
 int running ;
 int srand (int ) ;
 int threads_starting ;
 int ** varray ;

void *preempt_vmx_c(void *p)
{
 int i, j;
 srand(pthread_self());
 for (i = 0; i < 12; i++)
  for (j = 0; j < 4; j++)
   varray[i][j] = rand();


 preempt_vmx(varray, &threads_starting, &running);
 return p;
}
