
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EOWNERDEAD ;
 int assert (int) ;
 int lockCount ;
 int mutex ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;

void * inheritor(void * arg)
{
  assert(pthread_mutex_lock(&mutex) == EOWNERDEAD);
  lockCount++;
  assert(pthread_mutex_unlock(&mutex) == 0);

  return 0;
}
