
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINVAL ;
 int PTHREAD_PROCESS_PRIVATE ;
 int assert (int) ;
 int lock ;
 scalar_t__ pthread_spin_destroy (int *) ;
 scalar_t__ pthread_spin_init (int *,int ) ;
 scalar_t__ pthread_spin_lock (int *) ;
 scalar_t__ pthread_spin_unlock (int *) ;

int
main()
{
  assert(pthread_spin_init(&lock, PTHREAD_PROCESS_PRIVATE) == 0);

  assert(pthread_spin_lock(&lock) == 0);

  assert(pthread_spin_unlock(&lock) == 0);

  assert(pthread_spin_destroy(&lock) == 0);

  assert(pthread_spin_lock(&lock) == EINVAL);

  return 0;
}
