
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int assert (int) ;
 int func ;
 int mutex1 ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_join (int ,int *) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 int washere ;

int
main()
{
  pthread_t t;

  assert(pthread_mutex_lock(&mutex1) == 0);

  assert(pthread_create(&t, ((void*)0), func, ((void*)0)) == 0);
  assert(pthread_join(t, ((void*)0)) == 0);

  assert(pthread_mutex_unlock(&mutex1) == 0);

  assert(washere == 1);

  return 0;
}
