#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_12__ {long tv_sec; int tv_nsec; } ;
struct TYPE_11__ {char* nWaitersBlocked; char* nWaitersGone; char* nWaitersToUnblock; } ;
struct TYPE_10__ {int const millitm; scalar_t__ time; } ;
typedef  TYPE_1__ PTW32_STRUCT_TIMEB ;
typedef  int DWORD ;

/* Variables and functions */
 int NUMTHREADS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_8__ abstime ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int awoken ; 
 TYPE_2__* cv ; 
 TYPE_2__* cv1 ; 
 char** error_string ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  mutex1 ; 
 int /*<<< orphan*/  mythread ; 
 int FUNC4 (TYPE_2__**) ; 
 scalar_t__ FUNC5 (TYPE_2__**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__**) ; 
 scalar_t__ FUNC7 (TYPE_2__**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int signaled ; 
 int /*<<< orphan*/  stderr ; 
 int timedout ; 
 int waiting ; 

int
FUNC14()
{
  int i;
  pthread_t t[NUMTHREADS + 1];
  void* result = (void*)0;
  PTW32_STRUCT_TIMEB currSysTime;
  const DWORD NANOSEC_PER_MILLISEC = 1000000;

  FUNC1(FUNC5(&cv, NULL) == 0);
  FUNC1(FUNC5(&cv1, NULL) == 0);

  FUNC1(FUNC11(&mutex, NULL) == 0);
  FUNC1(FUNC11(&mutex1, NULL) == 0);

  /* get current system time */
  FUNC0(&currSysTime);

  abstime.tv_sec = (long)currSysTime.time;
  abstime.tv_nsec = NANOSEC_PER_MILLISEC * currSysTime.millitm;

  abstime.tv_sec += 5;

  FUNC1(FUNC12(&mutex1) == 0);

  for (i = 1; i <= NUMTHREADS; i++)
    {
      FUNC1(FUNC8(&t[i], NULL, mythread, (void *)(size_t)i) == 0);
    }

  do {
    FUNC1(FUNC7(&cv1,&mutex1) == 0);
  } while ( NUMTHREADS > waiting );

  FUNC1(FUNC13(&mutex1) == 0);

  for (i = NUMTHREADS/3; i <= 2*NUMTHREADS/3; i++)
    {
//      assert(pthread_mutex_lock(&mutex) == 0);
      FUNC1(FUNC6(&cv) == 0);
//      assert(pthread_mutex_unlock(&mutex) == 0);

      signaled++;
    }

  for (i = 1; i <= NUMTHREADS; i++)
    {
      FUNC1(FUNC9(t[i], &result) == 0);
        FUNC1((int)(size_t)result == i);
    }

      FUNC3(stderr, "awk = %d\n", awoken);
      FUNC3(stderr, "sig = %d\n", signaled);
      FUNC3(stderr, "tot = %d\n", timedout);

  FUNC1(signaled == awoken);
  FUNC1(timedout == NUMTHREADS - signaled);

  FUNC1(FUNC4(&cv1) == 0);

  {
  int result = FUNC4(&cv);
  if (result != 0)
    {
      FUNC3(stderr, "Result = %s\n", error_string[result]);
        FUNC3(stderr, "\tWaitersBlocked = %s\n", cv->nWaitersBlocked);
        FUNC3(stderr, "\tWaitersGone = %s\n", cv->nWaitersGone);
        FUNC3(stderr, "\tWaitersToUnblock = %s\n", cv->nWaitersToUnblock);
        FUNC2(stderr);
    }
  FUNC1(result == 0);
  }

  FUNC1(FUNC10(&mutex1) == 0);
  FUNC1(FUNC10(&mutex) == 0);

  return 0;
}