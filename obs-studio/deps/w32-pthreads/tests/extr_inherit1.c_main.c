
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;
typedef int pthread_t ;
typedef int pthread_attr_t ;
typedef int HANDLE ;


 scalar_t__ GetThreadPriority (int ) ;
 int PTHREAD_INHERIT_SCHED ;
 int PTW32TEST_MAXPRIORITIES ;
 int PTW32TEST_THREAD_INIT_PRIO ;
 int SCHED_OTHER ;
 int SetThreadPriority (int ,int ) ;
 int assert (int) ;
 int func ;
 int getValidPriorities ;
 int maxPrio ;
 int minPrio ;
 scalar_t__ pthread_attr_getinheritsched (int *,int*) ;
 scalar_t__ pthread_attr_init (int *) ;
 scalar_t__ pthread_attr_setinheritsched (int *,int) ;
 scalar_t__ pthread_attr_setschedparam (int *,struct sched_param*) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_getschedparam (int ,int*,struct sched_param*) ;
 int pthread_getw32threadhandle_np (int ) ;
 scalar_t__ pthread_join (int ,void**) ;
 int pthread_self () ;
 scalar_t__ pthread_setschedparam (int ,int,struct sched_param*) ;
 int sched_get_priority_max (int) ;
 int sched_get_priority_min (int) ;
 scalar_t__* validPriorities ;

int
main()
{
  pthread_t t;
  pthread_t mainThread = pthread_self();
  pthread_attr_t attr;
  void * result = ((void*)0);
  struct sched_param param;
  struct sched_param mainParam;
  int prio;
  int policy;
  int inheritsched = -1;
  pthread_t threadID = pthread_self();
  HANDLE threadH = pthread_getw32threadhandle_np(threadID);

  assert((maxPrio = sched_get_priority_max(SCHED_OTHER)) != -1);
  assert((minPrio = sched_get_priority_min(SCHED_OTHER)) != -1);

  assert(pthread_create(&t, ((void*)0), getValidPriorities, ((void*)0)) == 0);
  assert(pthread_join(t, &result) == 0);

  assert(pthread_attr_init(&attr) == 0);
  assert(pthread_attr_setinheritsched(&attr, PTHREAD_INHERIT_SCHED) == 0);
  assert(pthread_attr_getinheritsched(&attr, &inheritsched) == 0);
  assert(inheritsched == PTHREAD_INHERIT_SCHED);

  for (prio = minPrio; prio <= maxPrio; prio++)
    {
      mainParam.sched_priority = prio;


      SetThreadPriority(threadH, PTW32TEST_THREAD_INIT_PRIO);


      assert(pthread_setschedparam(mainThread, SCHED_OTHER, &mainParam) == 0);
      assert(pthread_getschedparam(mainThread, &policy, &mainParam) == 0);
      assert(policy == SCHED_OTHER);

      assert(mainParam.sched_priority == prio);
      assert(GetThreadPriority(threadH) ==
               validPriorities[prio+(PTW32TEST_MAXPRIORITIES/2)]);

      for (param.sched_priority = prio;
           param.sched_priority <= maxPrio;
           param.sched_priority++)
        {

          assert(pthread_attr_setschedparam(&attr, &param) == 0);
          assert(pthread_create(&t, &attr, func, ((void*)0)) == 0);
          pthread_join(t, &result);
          assert((int)(size_t) result == mainParam.sched_priority);
        }
    }

  return 0;
}
