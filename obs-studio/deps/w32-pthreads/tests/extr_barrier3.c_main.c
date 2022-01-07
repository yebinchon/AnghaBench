
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int pthread_barrierattr_t ;


 int PTHREAD_BARRIER_SERIAL_THREAD ;
 int PTHREAD_PROCESS_PRIVATE ;
 int assert (int) ;
 int barrier ;
 int func ;
 scalar_t__ pthread_barrier_destroy (int *) ;
 scalar_t__ pthread_barrier_init (int *,int *,int) ;
 scalar_t__ pthread_barrierattr_destroy (int *) ;
 scalar_t__ pthread_barrierattr_init (int *) ;
 scalar_t__ pthread_barrierattr_setpshared (int *,int ) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_join (int ,scalar_t__*) ;
 scalar_t__ result ;

int
main()
{
  pthread_t t;
  pthread_barrierattr_t ba;

  assert(pthread_barrierattr_init(&ba) == 0);
  assert(pthread_barrierattr_setpshared(&ba, PTHREAD_PROCESS_PRIVATE) == 0);
  assert(pthread_barrier_init(&barrier, &ba, 1) == 0);

  assert(pthread_create(&t, ((void*)0), func, ((void*)0)) == 0);

  assert(pthread_join(t, &result) == 0);

  assert((int)(size_t)result == PTHREAD_BARRIER_SERIAL_THREAD);

  assert(pthread_barrier_destroy(&barrier) == 0);
  assert(pthread_barrierattr_destroy(&ba) == 0);

  return 0;
}
