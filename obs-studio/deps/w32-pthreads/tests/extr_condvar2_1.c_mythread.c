
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ETIMEDOUT ;
 int abstime ;
 int assert (int) ;
 int cv ;
 int mutex ;
 scalar_t__ pthread_cond_timedwait (int *,int *,int *) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;

void *
mythread(void * arg)
{
  assert(pthread_mutex_lock(&mutex) == 0);

  assert(pthread_cond_timedwait(&cv, &mutex, &abstime) == ETIMEDOUT);

  assert(pthread_mutex_unlock(&mutex) == 0);

  return arg;
}
