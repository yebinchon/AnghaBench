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
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PTW32TEST_MAXPRIORITIES ; 
 int /*<<< orphan*/  SCHED_OTHER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int maxPrio ; 
 int minPrio ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_param*) ; 
 int /*<<< orphan*/ * validPriorities ; 

void *
FUNC5(void * arg)
{
  int prioSet;
  pthread_t thread = FUNC3();
  HANDLE threadH = FUNC2(thread);
  struct sched_param param;

  for (prioSet = minPrio;
       prioSet <= maxPrio;
       prioSet++)
    {
	/*
       * If prioSet is invalid then the threads priority is unchanged
       * from the previous value. Make the previous value a known
       * one so that we can check later.
       */
        param.sched_priority = prioSet;
	FUNC1(FUNC4(thread, SCHED_OTHER, &param) == 0);
	validPriorities[prioSet+(PTW32TEST_MAXPRIORITIES/2)] = FUNC0(threadH);
    }

  return (void *) 0;
}