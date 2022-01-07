
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ETIMEDOUT ;
 int abstime ;
 int assert (int) ;
 scalar_t__ pthread_rwlock_timedrdlock (int *,int *) ;
 int rwlock1 ;

void * rdfunc(void * arg)
{
  int ba = 0;

  assert(pthread_rwlock_timedrdlock(&rwlock1, &abstime) == ETIMEDOUT);

  return ((void *)(size_t)ba);
}
