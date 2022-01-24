#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_12__ {long tv_sec; int tv_nsec; } ;
struct TYPE_11__ {long tv_sec; int tv_nsec; } ;
struct TYPE_10__ {char* nWaitersBlocked; char* nWaitersGone; char* nWaitersToUnblock; } ;
struct TYPE_9__ {int const millitm; scalar_t__ time; } ;
typedef  TYPE_1__ PTW32_STRUCT_TIMEB ;
typedef  int /*<<< orphan*/  LPLONG ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,long) ; 
 int NUMTHREADS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_7__ abstime ; 
 TYPE_6__ abstime2 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int awoken ; 
 TYPE_2__* cv ; 
 char** error_string ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  mythread ; 
 scalar_t__ FUNC5 (TYPE_2__**) ; 
 int FUNC6 (TYPE_2__**) ; 
 scalar_t__ FUNC7 (TYPE_2__**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int timedout ; 

int
FUNC14()
{
  int i;
  pthread_t t[NUMTHREADS + 1];
  void* result = (void*)0;
  PTW32_STRUCT_TIMEB currSysTime;
  const DWORD NANOSEC_PER_MILLISEC = 1000000;

  FUNC2(FUNC7(&cv, NULL) == 0);

  FUNC2(FUNC11(&mutex, NULL) == 0);

  /* get current system time */
  FUNC1(&currSysTime);

  abstime.tv_sec = abstime2.tv_sec = (long)currSysTime.time + 5;
  abstime.tv_nsec = abstime2.tv_nsec = NANOSEC_PER_MILLISEC * currSysTime.millitm;

  FUNC2(FUNC12(&mutex) == 0);

  for (i = 1; i <= NUMTHREADS; i++)
    {
      FUNC2(FUNC8(&t[i], NULL, mythread, (void *)(size_t)i) == 0);
    }

  FUNC2(FUNC13(&mutex) == 0);

  for (i = 1; i <= NUMTHREADS; i++)
    {
      FUNC2(FUNC9(t[i], &result) == 0);
	FUNC2((int)(size_t)result == i);
      /*
       * Approximately 2/3rds of the threads are expected to time out.
       * Signal the remainder after some threads have woken up and exited
       * and while some are still waking up after timeout.
       * Also tests that redundant broadcasts don't return errors.
       */

//      assert(pthread_mutex_lock(&mutex) == 0);

      if (FUNC0((LPLONG)&awoken, 0L) > NUMTHREADS/3)
        {
          FUNC2(FUNC5(&cv) == 0);
        }

//      assert(pthread_mutex_unlock(&mutex) == 0);

    }

  FUNC2(awoken == NUMTHREADS - timedout);

  {
  int result = FUNC6(&cv);
  if (result != 0)
    {
      FUNC4(stderr, "Result = %s\n", error_string[result]);
	FUNC4(stderr, "\tWaitersBlocked = %s\n", cv->nWaitersBlocked);
	FUNC4(stderr, "\tWaitersGone = %s\n", cv->nWaitersGone);
	FUNC4(stderr, "\tWaitersToUnblock = %s\n", cv->nWaitersToUnblock);
	FUNC3(stderr);
    }
  FUNC2(result == 0);
  }

  FUNC2(FUNC10(&mutex) == 0);

  return 0;
}