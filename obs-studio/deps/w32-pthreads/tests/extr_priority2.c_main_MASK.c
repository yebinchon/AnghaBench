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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PTHREAD_BARRIER_SERIAL_THREAD ; 
 int PTW32TEST_MAXPRIORITIES ; 
 int /*<<< orphan*/  PTW32TEST_THREAD_INIT_PRIO ; 
 int /*<<< orphan*/  SCHED_OTHER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  endBarrier ; 
 int /*<<< orphan*/  func ; 
 int /*<<< orphan*/  getValidPriorities ; 
 int maxPrio ; 
 int minPrio ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_param*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  startBarrier ; 
 scalar_t__* validPriorities ; 

int
FUNC12()
{
  pthread_t t;
  void * result = NULL;
  int result2;
  struct sched_param param;

  FUNC2((maxPrio = FUNC10(SCHED_OTHER)) != -1);
  FUNC2((minPrio = FUNC11(SCHED_OTHER)) != -1);

  FUNC2(FUNC5(&t, NULL, getValidPriorities, NULL) == 0);
  FUNC2(FUNC7(t, &result) == 0);

  FUNC2(FUNC3(&startBarrier, NULL, 2) == 0);
  FUNC2(FUNC3(&endBarrier, NULL, 2) == 0);

  /* Set the thread's priority to a known initial value.
   * If the new priority is invalid then the threads priority
   * is unchanged from the previous value.
   */
  FUNC1(FUNC6(FUNC8()),
                    PTW32TEST_THREAD_INIT_PRIO);

  for (param.sched_priority = minPrio;
       param.sched_priority <= maxPrio;
       param.sched_priority++)
    {
      FUNC2(FUNC5(&t, NULL, func, NULL) == 0);
      FUNC2(FUNC9(t, SCHED_OTHER, &param) == 0);
      result2 = FUNC4(&startBarrier);
      FUNC2(result2 == 0 || result2 == PTHREAD_BARRIER_SERIAL_THREAD);
      result2 = FUNC4(&endBarrier);
      FUNC2(result2 == 0 || result2 == PTHREAD_BARRIER_SERIAL_THREAD);
      FUNC2(FUNC0(FUNC6(t)) ==
	  validPriorities[param.sched_priority+(PTW32TEST_MAXPRIORITIES/2)]);
      FUNC7(t, &result);
      FUNC2(param.sched_priority == (int)(size_t)result);
    }

  return 0;
}