
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * PTHREAD_MUTEX_INITIALIZER ;
 int assert (int) ;
 int * mutex ;
 scalar_t__ pthread_mutex_destroy (int **) ;
 scalar_t__ pthread_mutex_lock (int **) ;
 scalar_t__ pthread_mutex_unlock (int **) ;

int
main()
{
  assert(mutex == PTHREAD_MUTEX_INITIALIZER);

  assert(pthread_mutex_lock(&mutex) == 0);

  assert(mutex != PTHREAD_MUTEX_INITIALIZER);

  assert(mutex != ((void*)0));

  assert(pthread_mutex_unlock(&mutex) == 0);

  assert(pthread_mutex_destroy(&mutex) == 0);

  assert(mutex == ((void*)0));

  return 0;
}
