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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTHREAD_EXPLICIT_SCHED ; 
 int PTW32TEST_MAXPRIORITIES ; 
 int /*<<< orphan*/  PTW32TEST_THREAD_INIT_PRIO ; 
 int /*<<< orphan*/  SCHED_OTHER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  func ; 
 int /*<<< orphan*/  getValidPriorities ; 
 int maxPrio ; 
 int minPrio ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct sched_param*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int* validPriorities ; 

int
FUNC13()
{
  pthread_t t;
  pthread_attr_t attr;
  void * result = NULL;
  struct sched_param param;

  FUNC2((maxPrio = FUNC11(SCHED_OTHER)) != -1);
  FUNC2((minPrio = FUNC12(SCHED_OTHER)) != -1);

  FUNC2(FUNC7(&t, NULL, getValidPriorities, NULL) == 0);
  FUNC2(FUNC9(t, &result) == 0);

  FUNC2(FUNC4(&attr) == 0);
  FUNC2(FUNC5(&attr, PTHREAD_EXPLICIT_SCHED) == 0);

  /* Set the thread's priority to a known initial value. */
  FUNC1(FUNC8(FUNC10()),
                    PTW32TEST_THREAD_INIT_PRIO);

  FUNC3("Using pthread_getschedparam\n");
  FUNC3("%10s %10s %10s\n", "Set value", "Get value", "Win priority");

  for (param.sched_priority = minPrio;
       param.sched_priority <= maxPrio;
       param.sched_priority++)
    {
      int prio;

      FUNC2(FUNC6(&attr, &param) == 0);
      FUNC2(FUNC7(&t, &attr, func, (void *) &attr) == 0);

      FUNC2((prio = FUNC0(FUNC8(t)))
             == validPriorities[param.sched_priority+(PTW32TEST_MAXPRIORITIES/2)]);

      FUNC2(FUNC9(t, &result) == 0);

      FUNC2(param.sched_priority == (int)(size_t) result);
      FUNC3("%10d %10d %10d\n", param.sched_priority, (int)(size_t) result, prio);
    }

  return 0;
}