
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EOWNERDEAD ;
 int assert (int) ;
 int lockCount ;
 int * mutex ;
 scalar_t__ pthread_mutex_consistent (int *) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;

void * inheritor(void * arg)
{
  int* o = (int*)arg;

  assert(pthread_mutex_lock(&mutex[o[0]]) == EOWNERDEAD);
  lockCount++;
  assert(pthread_mutex_lock(&mutex[o[1]]) == EOWNERDEAD);
  lockCount++;
  assert(pthread_mutex_lock(&mutex[o[2]]) == EOWNERDEAD);
  lockCount++;
  assert(pthread_mutex_consistent(&mutex[o[2]]) == 0);
  assert(pthread_mutex_consistent(&mutex[o[1]]) == 0);
  assert(pthread_mutex_consistent(&mutex[o[0]]) == 0);
  assert(pthread_mutex_unlock(&mutex[o[2]]) == 0);
  assert(pthread_mutex_unlock(&mutex[o[1]]) == 0);
  assert(pthread_mutex_unlock(&mutex[o[0]]) == 0);

  return 0;
}
