
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 scalar_t__ PTHREAD_ERRORCHECK_MUTEX_INITIALIZER ;
 int assert (int) ;
 int exit (int ) ;
 int lockCount ;
 int locker ;
 scalar_t__ mutex ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_join (int ,void**) ;
 scalar_t__ pthread_mutex_destroy (scalar_t__*) ;

int
main()
{
  pthread_t t;
  void* result = (void*)0;

  assert(mutex == PTHREAD_ERRORCHECK_MUTEX_INITIALIZER);

  assert(pthread_create(&t, ((void*)0), locker, ((void*)0)) == 0);

  assert(pthread_join(t, &result) == 0);
  assert((int)(size_t)result == 555);

  assert(lockCount == 2);

  assert(pthread_mutex_destroy(&mutex) == 0);

  exit(0);


  return 0;
}
