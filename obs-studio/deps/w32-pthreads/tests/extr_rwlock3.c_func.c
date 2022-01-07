
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EBUSY ;
 int assert (int) ;
 scalar_t__ pthread_rwlock_trywrlock (int *) ;
 int rwlock1 ;
 int washere ;

void * func(void * arg)
{
  assert(pthread_rwlock_trywrlock(&rwlock1) == EBUSY);

  washere = 1;

  return 0;
}
