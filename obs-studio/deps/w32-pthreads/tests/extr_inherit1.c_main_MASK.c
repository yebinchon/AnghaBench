#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sched_param {int sched_priority; } ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PTHREAD_INHERIT_SCHED ; 
 int PTW32TEST_MAXPRIORITIES ; 
 int /*<<< orphan*/  PTW32TEST_THREAD_INIT_PRIO ; 
 int SCHED_OTHER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  func ; 
 int /*<<< orphan*/  getValidPriorities ; 
 int maxPrio ; 
 int minPrio ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct sched_param*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int*,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int,struct sched_param*) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 scalar_t__* validPriorities ; 

int
FUNC15()
{
  pthread_t t;
  pthread_t mainThread = FUNC11();
  pthread_attr_t attr;
  void * result = NULL;
  struct sched_param param;
  struct sched_param mainParam;
  int prio;
  int policy;
  int inheritsched = -1;
  pthread_t threadID = FUNC11();
  HANDLE threadH = FUNC9(threadID);

  FUNC2((maxPrio = FUNC13(SCHED_OTHER)) != -1);
  FUNC2((minPrio = FUNC14(SCHED_OTHER)) != -1);

  FUNC2(FUNC7(&t, NULL, getValidPriorities, NULL) == 0);
  FUNC2(FUNC10(t, &result) == 0);

  FUNC2(FUNC4(&attr) == 0);
  FUNC2(FUNC5(&attr, PTHREAD_INHERIT_SCHED) == 0);
  FUNC2(FUNC3(&attr, &inheritsched) == 0);
  FUNC2(inheritsched == PTHREAD_INHERIT_SCHED);

  for (prio = minPrio; prio <= maxPrio; prio++)
    {
      mainParam.sched_priority = prio;

      /* Set the thread's priority to a known initial value. */
      FUNC1(threadH, PTW32TEST_THREAD_INIT_PRIO);

      /* Change the main thread priority */
      FUNC2(FUNC12(mainThread, SCHED_OTHER, &mainParam) == 0);
      FUNC2(FUNC8(mainThread, &policy, &mainParam) == 0);
      FUNC2(policy == SCHED_OTHER);
      /* Priority returned below should be the level set by pthread_setschedparam(). */
      FUNC2(mainParam.sched_priority == prio);
      FUNC2(FUNC0(threadH) ==
               validPriorities[prio+(PTW32TEST_MAXPRIORITIES/2)]);

      for (param.sched_priority = prio;
           param.sched_priority <= maxPrio;
           param.sched_priority++)
        {
          /* The new thread create should ignore this new priority */
          FUNC2(FUNC6(&attr, &param) == 0);
          FUNC2(FUNC7(&t, &attr, func, NULL) == 0);
          FUNC10(t, &result);
          FUNC2((int)(size_t) result == mainParam.sched_priority);
        }
    }

  return 0;
}