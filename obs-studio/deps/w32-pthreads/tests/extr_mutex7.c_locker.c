
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EBUSY ;
 int assert (int) ;
 int lockCount ;
 int mutex ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_trylock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;

void * locker(void * arg)
{
  assert(pthread_mutex_lock(&mutex) == 0);
  lockCount++;
  assert(pthread_mutex_trylock(&mutex) == EBUSY);
  lockCount++;
  assert(pthread_mutex_unlock(&mutex) == 0);
  assert(pthread_mutex_unlock(&mutex) == 0);

  return 0;
}
