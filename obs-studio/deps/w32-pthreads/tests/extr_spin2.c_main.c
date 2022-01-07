
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int PTHREAD_PROCESS_PRIVATE ;
 int assert (int) ;
 int func ;
 int lock ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_join (int ,int *) ;
 scalar_t__ pthread_spin_destroy (int *) ;
 scalar_t__ pthread_spin_init (int *,int ) ;
 scalar_t__ pthread_spin_lock (int *) ;
 scalar_t__ pthread_spin_unlock (int *) ;
 int washere ;

int
main()
{
  pthread_t t;

  assert(pthread_spin_init(&lock, PTHREAD_PROCESS_PRIVATE) == 0);

  assert(pthread_spin_lock(&lock) == 0);

  assert(pthread_create(&t, ((void*)0), func, ((void*)0)) == 0);
  assert(pthread_join(t, ((void*)0)) == 0);

  assert(pthread_spin_unlock(&lock) == 0);

  assert(pthread_spin_destroy(&lock) == 0);

  assert(washere == 1);

  return 0;
}
