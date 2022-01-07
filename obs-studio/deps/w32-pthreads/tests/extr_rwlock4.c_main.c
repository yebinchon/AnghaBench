
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int assert (int) ;
 int func ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_join (int ,int *) ;
 scalar_t__ pthread_rwlock_rdlock (int *) ;
 scalar_t__ pthread_rwlock_unlock (int *) ;
 int rwlock1 ;
 int washere ;

int
main()
{
  pthread_t t;

  assert(pthread_rwlock_rdlock(&rwlock1) == 0);

  assert(pthread_create(&t, ((void*)0), func, ((void*)0)) == 0);

  assert(pthread_join(t, ((void*)0)) == 0);

  assert(pthread_rwlock_unlock(&rwlock1) == 0);

  assert(washere == 1);

  return 0;
}
