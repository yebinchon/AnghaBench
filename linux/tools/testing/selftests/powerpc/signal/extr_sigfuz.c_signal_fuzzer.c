
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int EXIT_SUCCESS ;
 int free (int *) ;
 int * malloc (int) ;
 int nthread ;
 int perror (char*) ;
 int pthread_create (int *,int *,int ,void*) ;
 int pthread_join (int ,int *) ;
 int sigfuz_test ;

__attribute__((used)) static int signal_fuzzer(void)
{
 int t, rc;
 pthread_t *threads;

 threads = malloc(nthread * sizeof(pthread_t));

 for (t = 0; t < nthread; t++) {
  rc = pthread_create(&threads[t], ((void*)0), sigfuz_test,
        (void *)&t);
  if (rc)
   perror("Thread creation error\n");
 }

 for (t = 0; t < nthread; t++) {
  rc = pthread_join(threads[t], ((void*)0));
  if (rc)
   perror("Thread join error\n");
 }

 free(threads);

 return EXIT_SUCCESS;
}
