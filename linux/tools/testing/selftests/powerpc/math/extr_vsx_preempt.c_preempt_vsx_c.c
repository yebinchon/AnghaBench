
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 long preempt_vsx (scalar_t__**,int *,int *) ;
 int pthread_self () ;
 scalar_t__ rand () ;
 int running ;
 int srand (int ) ;
 int stderr ;
 int threads_starting ;
 scalar_t__** varray ;

void *preempt_vsx_c(void *p)
{
 int i, j;
 long rc;
 srand(pthread_self());
 for (i = 0; i < 12; i++)
  for (j = 0; j < 4; j++) {
   varray[i][j] = rand();

   if (varray[i][j] == 0)
    j--;
  }
 rc = preempt_vsx(varray, &threads_starting, &running);
 if (rc == 2)
  fprintf(stderr, "Caught zeros in VSX compares\n");
 return (void *)rc;
}
