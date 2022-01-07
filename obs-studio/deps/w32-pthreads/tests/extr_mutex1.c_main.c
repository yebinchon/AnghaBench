
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int * mutex ;
 scalar_t__ pthread_mutex_destroy (int **) ;
 scalar_t__ pthread_mutex_init (int **,int *) ;
 scalar_t__ pthread_mutex_lock (int **) ;
 scalar_t__ pthread_mutex_unlock (int **) ;

int
main()
{
  assert(mutex == ((void*)0));

  assert(pthread_mutex_init(&mutex, ((void*)0)) == 0);

  assert(mutex != ((void*)0));

  assert(pthread_mutex_lock(&mutex) == 0);

  assert(pthread_mutex_unlock(&mutex) == 0);

  assert(pthread_mutex_destroy(&mutex) == 0);

  assert(mutex == ((void*)0));

  return 0;
}
