
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 scalar_t__ pthread_rwlock_tryrdlock (int *) ;
 scalar_t__ pthread_rwlock_unlock (int *) ;
 int rwlock1 ;
 int washere ;

void * func(void * arg)
{
  assert(pthread_rwlock_tryrdlock(&rwlock1) == 0);

  assert(pthread_rwlock_unlock(&rwlock1) == 0);

  washere = 1;

  return 0;
}
