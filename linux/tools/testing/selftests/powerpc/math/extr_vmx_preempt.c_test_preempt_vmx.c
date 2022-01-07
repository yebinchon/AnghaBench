
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int FAIL_IF (long) ;
 int PREEMPT_TIME ;
 int THREAD_FACTOR ;
 int _SC_NPROCESSORS_ONLN ;
 int * malloc (int) ;
 int preempt_vmx_c ;
 int printf (char*,...) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,void**) ;
 int running ;
 int setbuf (int ,int *) ;
 int sleep (int) ;
 int stdout ;
 int sysconf (int ) ;
 int threads_starting ;

int test_preempt_vmx(void)
{
 int i, rc, threads;
 pthread_t *tids;

 threads = sysconf(_SC_NPROCESSORS_ONLN) * THREAD_FACTOR;
 tids = malloc(threads * sizeof(pthread_t));
 FAIL_IF(!tids);

 running = 1;
 threads_starting = threads;
 for (i = 0; i < threads; i++) {
  rc = pthread_create(&tids[i], ((void*)0), preempt_vmx_c, ((void*)0));
  FAIL_IF(rc);
 }

 setbuf(stdout, ((void*)0));

 printf("\tWaiting for all workers to start...");
 while(threads_starting)
  asm volatile("": : :"memory");
 printf("done\n");

 printf("\tWaiting for %d seconds to let some workers get preempted...", PREEMPT_TIME);
 sleep(PREEMPT_TIME);
 printf("done\n");

 printf("\tStopping workers...");




 running = 0;
 for (i = 0; i < threads; i++) {
  void *rc_p;
  pthread_join(tids[i], &rc_p);





  if ((long) rc_p)
   printf("oops\n");
  FAIL_IF((long) rc_p);
 }
 printf("done\n");

 return 0;
}
