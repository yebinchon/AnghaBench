
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int PTW32_STRUCT_TIMEB ;


 int GetDurationMilliSecs (int ,int ) ;
 int PTW32_FTIME (int *) ;
 int assert (int) ;
 int currSysTimeStart ;
 int exit (int ) ;
 int func ;
 int lock ;
 int printf (char*) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_join (int ,void**) ;
 int pthread_num_processors_np () ;
 scalar_t__ pthread_spin_destroy (int *) ;
 scalar_t__ pthread_spin_lock (int *) ;
 scalar_t__ pthread_spin_unlock (int *) ;
 int sched_yield () ;
 int washere ;

int
main()
{
  void* result = (void*)0;
  pthread_t t;
  int CPUs;
  PTW32_STRUCT_TIMEB sysTime;

  if ((CPUs = pthread_num_processors_np()) == 1)
    {
      printf("Test not run - it requires multiple CPUs.\n");
 exit(0);
    }

  assert(pthread_spin_lock(&lock) == 0);

  assert(pthread_create(&t, ((void*)0), func, ((void*)0)) == 0);

  while (washere == 0)
    {
      sched_yield();
    }

  do
    {
      sched_yield();
      PTW32_FTIME(&sysTime);
    }
  while (GetDurationMilliSecs(currSysTimeStart, sysTime) <= 1000);

  assert(pthread_spin_unlock(&lock) == 0);

  assert(pthread_join(t, &result) == 0);
  assert((int)(size_t)result > 1000);

  assert(pthread_spin_destroy(&lock) == 0);

  assert(washere == 1);

  return 0;
}
