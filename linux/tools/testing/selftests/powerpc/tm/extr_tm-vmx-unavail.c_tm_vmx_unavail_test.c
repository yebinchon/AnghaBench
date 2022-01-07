
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int pthread_t ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int SKIP_IF (int) ;
 int _SC_NPROCESSORS_ONLN ;
 int free (int *) ;
 int have_htm () ;
 int * malloc (int) ;
 int passed ;
 int pthread_create (int *,int *,int *,int *) ;
 int pthread_join (int ,int *) ;
 int sysconf (int ) ;
 int worker ;

int tm_vmx_unavail_test()
{
 int threads;
 pthread_t *thread;

 SKIP_IF(!have_htm());

 passed = 1;

 threads = sysconf(_SC_NPROCESSORS_ONLN) * 4;
 thread = malloc(sizeof(pthread_t)*threads);
 if (!thread)
  return EXIT_FAILURE;

 for (uint64_t i = 0; i < threads; i++)
  pthread_create(&thread[i], ((void*)0), &worker, ((void*)0));

 for (uint64_t i = 0; i < threads; i++)
  pthread_join(thread[i], ((void*)0));

 free(thread);

 return passed ? EXIT_SUCCESS : EXIT_FAILURE;
}
