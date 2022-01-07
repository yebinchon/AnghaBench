
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 scalar_t__ PTHREAD_MUTEX_INITIALIZER ;
 int Sleep (int) ;
 int assert (int) ;
 int exit (int ) ;
 int lockCount ;
 int locker ;
 scalar_t__ mutex ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_mutex_unlock (scalar_t__*) ;

int
main()
{
  pthread_t t;

  assert(mutex == PTHREAD_MUTEX_INITIALIZER);

  assert(pthread_create(&t, ((void*)0), locker, ((void*)0)) == 0);

  Sleep(1000);

  assert(lockCount == 1);





  assert(pthread_mutex_unlock(&mutex) == 0);

  Sleep (1000);

  assert(lockCount == 2);

  exit(0);


  return 0;
}
