
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;
typedef int pthread_t ;
typedef int pthread_attr_t ;


 int GetThreadPriority (int ) ;
 int PTHREAD_EXPLICIT_SCHED ;
 int PTW32TEST_MAXPRIORITIES ;
 int PTW32TEST_THREAD_INIT_PRIO ;
 int SCHED_OTHER ;
 int SetThreadPriority (int ,int ) ;
 int assert (int) ;
 int func ;
 int getValidPriorities ;
 int maxPrio ;
 int minPrio ;
 int printf (char*,...) ;
 scalar_t__ pthread_attr_init (int *) ;
 scalar_t__ pthread_attr_setinheritsched (int *,int ) ;
 scalar_t__ pthread_attr_setschedparam (int *,struct sched_param*) ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 int pthread_getw32threadhandle_np (int ) ;
 scalar_t__ pthread_join (int ,void**) ;
 int pthread_self () ;
 int sched_get_priority_max (int ) ;
 int sched_get_priority_min (int ) ;
 int* validPriorities ;

int
main()
{
  pthread_t t;
  pthread_attr_t attr;
  void * result = ((void*)0);
  struct sched_param param;

  assert((maxPrio = sched_get_priority_max(SCHED_OTHER)) != -1);
  assert((minPrio = sched_get_priority_min(SCHED_OTHER)) != -1);

  assert(pthread_create(&t, ((void*)0), getValidPriorities, ((void*)0)) == 0);
  assert(pthread_join(t, &result) == 0);

  assert(pthread_attr_init(&attr) == 0);
  assert(pthread_attr_setinheritsched(&attr, PTHREAD_EXPLICIT_SCHED) == 0);


  SetThreadPriority(pthread_getw32threadhandle_np(pthread_self()),
                    PTW32TEST_THREAD_INIT_PRIO);

  printf("Using pthread_getschedparam\n");
  printf("%10s %10s %10s\n", "Set value", "Get value", "Win priority");

  for (param.sched_priority = minPrio;
       param.sched_priority <= maxPrio;
       param.sched_priority++)
    {
      int prio;

      assert(pthread_attr_setschedparam(&attr, &param) == 0);
      assert(pthread_create(&t, &attr, func, (void *) &attr) == 0);

      assert((prio = GetThreadPriority(pthread_getw32threadhandle_np(t)))
             == validPriorities[param.sched_priority+(PTW32TEST_MAXPRIORITIES/2)]);

      assert(pthread_join(t, &result) == 0);

      assert(param.sched_priority == (int)(size_t) result);
      printf("%10d %10d %10d\n", param.sched_priority, (int)(size_t) result, prio);
    }

  return 0;
}
