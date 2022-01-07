
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int PTHREAD_PROCESS_PRIVATE ;
 int assert (int) ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_join (int ,int *) ;
 scalar_t__ pthread_spin_destroy (int *) ;
 scalar_t__ pthread_spin_init (int *,int ) ;
 scalar_t__ pthread_spin_lock (int *) ;
 scalar_t__ pthread_spin_unlock (int *) ;
 int spin ;
 int unlocker ;
 int wasHere ;

int
main()
{
  pthread_t t;

  wasHere = 0;
  assert(pthread_spin_init(&spin, PTHREAD_PROCESS_PRIVATE) == 0);
  assert(pthread_spin_lock(&spin) == 0);
  assert(pthread_create(&t, ((void*)0), unlocker, (void*)0) == 0);
  assert(pthread_join(t, ((void*)0)) == 0);




  assert(pthread_spin_unlock(&spin) == 0);
  assert(pthread_spin_destroy(&spin) == 0);
  assert(wasHere == 2);

  return 0;
}
