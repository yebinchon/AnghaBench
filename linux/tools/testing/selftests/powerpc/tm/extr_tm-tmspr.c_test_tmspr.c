
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int EXIT_FAILURE ;
 int SKIP_IF (int) ;
 int _SC_NPROCESSORS_ONLN ;
 int free (int *) ;
 int have_htm () ;
 int * malloc (int) ;
 scalar_t__ passed ;
 scalar_t__ pthread_create (int *,int *,void*,void*) ;
 scalar_t__ pthread_join (int ,int *) ;
 int sysconf (int ) ;
 scalar_t__ texasr ;
 scalar_t__ tfiar_tfhar ;

int test_tmspr()
{
 pthread_t *thread;
 int thread_num;
 unsigned long i;

 SKIP_IF(!have_htm());


 thread_num = 10 * sysconf(_SC_NPROCESSORS_ONLN);

 thread = malloc(thread_num * sizeof(pthread_t));
 if (thread == ((void*)0))
  return EXIT_FAILURE;


 for (i = 0; i < thread_num; i += 2) {
  if (pthread_create(&thread[i], ((void*)0), (void *)tfiar_tfhar,
       (void *)i))
   return EXIT_FAILURE;
 }

 for (i = 1; i < thread_num; i += 2) {
  if (pthread_create(&thread[i], ((void*)0), (void *)texasr, (void *)i))
   return EXIT_FAILURE;
 }

 for (i = 0; i < thread_num; i++) {
  if (pthread_join(thread[i], ((void*)0)) != 0)
   return EXIT_FAILURE;
 }

 free(thread);

 if (passed)
  return 0;
 else
  return 1;
}
