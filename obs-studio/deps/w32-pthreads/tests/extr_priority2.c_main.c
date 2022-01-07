
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;
typedef int pthread_t ;


 scalar_t__ GetThreadPriority (int ) ;
 int PTHREAD_BARRIER_SERIAL_THREAD ;
 int PTW32TEST_MAXPRIORITIES ;
 int PTW32TEST_THREAD_INIT_PRIO ;
 int SCHED_OTHER ;
 int SetThreadPriority (int ,int ) ;
 int assert (int) ;
 int endBarrier ;
 int func ;
 int getValidPriorities ;
 int maxPrio ;
 int minPrio ;
 scalar_t__ pthread_barrier_init (int *,int *,int) ;
 int pthread_barrier_wait (int *) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 int pthread_getw32threadhandle_np (int ) ;
 scalar_t__ pthread_join (int ,void**) ;
 int pthread_self () ;
 scalar_t__ pthread_setschedparam (int ,int ,struct sched_param*) ;
 int sched_get_priority_max (int ) ;
 int sched_get_priority_min (int ) ;
 int startBarrier ;
 scalar_t__* validPriorities ;

int
main()
{
  pthread_t t;
  void * result = ((void*)0);
  int result2;
  struct sched_param param;

  assert((maxPrio = sched_get_priority_max(SCHED_OTHER)) != -1);
  assert((minPrio = sched_get_priority_min(SCHED_OTHER)) != -1);

  assert(pthread_create(&t, ((void*)0), getValidPriorities, ((void*)0)) == 0);
  assert(pthread_join(t, &result) == 0);

  assert(pthread_barrier_init(&startBarrier, ((void*)0), 2) == 0);
  assert(pthread_barrier_init(&endBarrier, ((void*)0), 2) == 0);





  SetThreadPriority(pthread_getw32threadhandle_np(pthread_self()),
                    PTW32TEST_THREAD_INIT_PRIO);

  for (param.sched_priority = minPrio;
       param.sched_priority <= maxPrio;
       param.sched_priority++)
    {
      assert(pthread_create(&t, ((void*)0), func, ((void*)0)) == 0);
      assert(pthread_setschedparam(t, SCHED_OTHER, &param) == 0);
      result2 = pthread_barrier_wait(&startBarrier);
      assert(result2 == 0 || result2 == PTHREAD_BARRIER_SERIAL_THREAD);
      result2 = pthread_barrier_wait(&endBarrier);
      assert(result2 == 0 || result2 == PTHREAD_BARRIER_SERIAL_THREAD);
      assert(GetThreadPriority(pthread_getw32threadhandle_np(t)) ==
   validPriorities[param.sched_priority+(PTW32TEST_MAXPRIORITIES/2)]);
      pthread_join(t, &result);
      assert(param.sched_priority == (int)(size_t)result);
    }

  return 0;
}
