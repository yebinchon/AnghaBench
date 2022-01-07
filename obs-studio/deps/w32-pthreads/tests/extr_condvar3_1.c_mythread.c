
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETIMEDOUT ;
 int abstime ;
 int assert (int) ;
 int awoken ;
 int cv ;
 int cv1 ;
 int mutex ;
 int mutex1 ;
 scalar_t__ pthread_cond_signal (int *) ;
 int pthread_cond_timedwait (int *,int *,int *) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 int timedout ;
 int waiting ;

void *
mythread(void * arg)
{
  int result;

  assert(pthread_mutex_lock(&mutex1) == 0);
  ++waiting;
  assert(pthread_mutex_unlock(&mutex1) == 0);
  assert(pthread_cond_signal(&cv1) == 0);

  assert(pthread_mutex_lock(&mutex) == 0);
  result = pthread_cond_timedwait(&cv, &mutex, &abstime);
  if (result == ETIMEDOUT)
    {
      timedout++;
    }
  else
    {
      awoken++;
    }
  assert(pthread_mutex_unlock(&mutex) == 0);

  return arg;
}
