
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int lockCount ;
 int mutex ;
 scalar_t__ pthread_mutex_lock (int *) ;

void * owner(void * arg)
{
  assert(pthread_mutex_lock(&mutex) == 0);
  lockCount++;

  return 0;
}
