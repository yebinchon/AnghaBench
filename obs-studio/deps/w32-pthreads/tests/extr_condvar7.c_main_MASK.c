#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_11__ {int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ pthread_t ;
struct TYPE_15__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_14__ {int /*<<< orphan*/ * notbusy; int /*<<< orphan*/ * lock; scalar_t__ shared; } ;
struct TYPE_13__ {int started; int threadnum; } ;
struct TYPE_12__ {int const millitm; scalar_t__ time; } ;
typedef  TYPE_2__ PTW32_STRUCT_TIMEB ;
typedef  int DWORD ;

/* Variables and functions */
 int NUMTHREADS ; 
 int /*<<< orphan*/ * PTHREAD_COND_INITIALIZER ; 
 int /*<<< orphan*/ * PTHREAD_MUTEX_INITIALIZER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_9__ abstime ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int awoken ; 
 TYPE_8__ cvthing ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  mythread ; 
 scalar_t__ FUNC4 (TYPE_1__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC8 (TYPE_1__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ **) ; 
 TYPE_1__ FUNC12 () ; 
 int /*<<< orphan*/ * start_flag ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_3__* threadbag ; 

int
FUNC13()
{
  int failed = 0;
  int i;
  pthread_t t[NUMTHREADS + 1];

  PTW32_STRUCT_TIMEB currSysTime;
  const DWORD NANOSEC_PER_MILLISEC = 1000000;

  cvthing.shared = 0;

  FUNC2((t[0] = FUNC12()).p != NULL);

  FUNC2(cvthing.notbusy == PTHREAD_COND_INITIALIZER);

  FUNC2(cvthing.lock == PTHREAD_MUTEX_INITIALIZER);

  FUNC2(FUNC10(&start_flag) == 0);

  FUNC0(&currSysTime);

  abstime.tv_sec = (time_t)currSysTime.time;
  abstime.tv_nsec = NANOSEC_PER_MILLISEC * currSysTime.millitm;

  abstime.tv_sec += 10;

  FUNC2((t[0] = FUNC12()).p != NULL);

  awoken = 0;

  for (i = 1; i <= NUMTHREADS; i++)
    {
      threadbag[i].started = 0;
      threadbag[i].threadnum = i;
      FUNC2(FUNC7(&t[i], NULL, mythread, (void *) &threadbag[i]) == 0);
    }

  /*
   * Code to control or munipulate child threads should probably go here.
   */

  FUNC2(FUNC11(&start_flag) == 0);

  /*
   * Give threads time to start.
   */
  FUNC1(1000);

  /*
   * Cancel one of the threads.
   */
  FUNC2(FUNC4(t[1]) == 0);
  FUNC2(FUNC8(t[1], NULL) == 0);

  FUNC2(FUNC10(&cvthing.lock) == 0);
  cvthing.shared++;
  FUNC2(FUNC11(&cvthing.lock) == 0);

  /*
   * Signal all remaining waiting threads.
   */
  FUNC2(FUNC5(&cvthing.notbusy) == 0);

  /*
   * Wait for all threads to complete.
   */
  for (i = 2; i <= NUMTHREADS; i++)
    FUNC2(FUNC8(t[i], NULL) == 0);

  /* 
   * Cleanup the CV.
   */
  
  FUNC2(FUNC9(&cvthing.lock) == 0);

  FUNC2(cvthing.lock == NULL);

  FUNC2(FUNC6(&cvthing.notbusy) == 0);

  FUNC2(cvthing.notbusy == NULL);

  /*
   * Standard check that all threads started.
   */
  for (i = 1; i <= NUMTHREADS; i++)
    { 
      failed = !threadbag[i].started;

      if (failed)
	{
	  FUNC3(stderr, "Thread %d: started %d\n", i, threadbag[i].started);
	}
    }

  FUNC2(!failed);

  /*
   * Check any results here.
   */

  FUNC2(awoken == (NUMTHREADS - 1));

  /*
   * Success.
   */
  return 0;
}