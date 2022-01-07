
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int FAIL_IF (int) ;
 int ITERATIONS ;
 int SIGUSR1 ;
 int THREAD_FACTOR ;
 int _SC_NPROCESSORS_ONLN ;
 scalar_t__ bad_context ;
 int fprintf (int ,char*) ;
 int free (int *) ;
 int * malloc (int) ;
 int printf (char*,...) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,void**) ;
 int pthread_kill (int ,int ) ;
 int running ;
 int setbuf (int ,int *) ;
 int signal_fpu_c ;
 int sleep (int) ;
 int stderr ;
 int stdout ;
 int sysconf (int ) ;
 int threads_starting ;

int test_signal_fpu(void)
{
 int i, j, rc, threads;
 void *rc_p;
 pthread_t *tids;

 threads = sysconf(_SC_NPROCESSORS_ONLN) * THREAD_FACTOR;
 tids = malloc(threads * sizeof(pthread_t));
 FAIL_IF(!tids);

 running = 1;
 threads_starting = threads;
 for (i = 0; i < threads; i++) {
  rc = pthread_create(&tids[i], ((void*)0), signal_fpu_c, ((void*)0));
  FAIL_IF(rc);
 }

 setbuf(stdout, ((void*)0));
 printf("\tWaiting for all workers to start...");
 while (threads_starting)
  asm volatile("": : :"memory");
 printf("done\n");

 printf("\tSending signals to all threads %d times...", ITERATIONS);
 for (i = 0; i < ITERATIONS; i++) {
  for (j = 0; j < threads; j++) {
   pthread_kill(tids[j], SIGUSR1);
  }
  sleep(1);
 }
 printf("done\n");

 printf("\tStopping workers...");
 running = 0;
 for (i = 0; i < threads; i++) {
  pthread_join(tids[i], &rc_p);





  if ((long) rc_p || bad_context)
   printf("oops\n");
  if (bad_context)
   fprintf(stderr, "\t!! bad_context is true\n");
  FAIL_IF((long) rc_p || bad_context);
 }
 printf("done\n");

 free(tids);
 return 0;
}
