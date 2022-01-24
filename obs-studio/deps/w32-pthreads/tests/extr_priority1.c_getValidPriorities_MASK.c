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
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PTW32TEST_MAXPRIORITIES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int THREAD_PRIORITY_HIGHEST ; 
 int THREAD_PRIORITY_LOWEST ; 
 int maxPrio ; 
 int minPrio ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int* validPriorities ; 

void *
FUNC5(void * arg)
{
  int prioSet;
  pthread_t threadID = FUNC4();
  HANDLE threadH = FUNC3(threadID);

  FUNC2("Using GetThreadPriority\n");
  FUNC2("%10s %10s\n", "Set value", "Get value");

  for (prioSet = minPrio;
       prioSet <= maxPrio;
       prioSet++)
    {
	/*
       * If prioSet is invalid then the threads priority is unchanged
       * from the previous value. Make the previous value a known
       * one so that we can check later.
       */
        if (prioSet < 0)
	  FUNC1(threadH, THREAD_PRIORITY_LOWEST);
        else
	  FUNC1(threadH, THREAD_PRIORITY_HIGHEST);
	FUNC1(threadH, prioSet);
	validPriorities[prioSet+(PTW32TEST_MAXPRIORITIES/2)] = FUNC0(threadH);
	FUNC2("%10d %10d\n", prioSet, validPriorities[prioSet+(PTW32TEST_MAXPRIORITIES/2)]);
    }

  return (void *) 0;
}