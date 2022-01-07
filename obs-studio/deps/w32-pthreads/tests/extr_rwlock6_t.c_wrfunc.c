
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Sleep (int) ;
 int assert (int) ;
 scalar_t__ bankAccount ;
 scalar_t__ pthread_rwlock_unlock (int *) ;
 scalar_t__ pthread_rwlock_wrlock (int *) ;
 int rwlock1 ;

void * wrfunc(void * arg)
{
  assert(pthread_rwlock_wrlock(&rwlock1) == 0);
  Sleep(2000);
  bankAccount += 10;
  assert(pthread_rwlock_unlock(&rwlock1) == 0);

  return ((void *)(size_t)bankAccount);
}
