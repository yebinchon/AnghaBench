#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_9__ {long tv_sec; int tv_nsec; } ;
struct TYPE_8__ {char* nWaitersBlocked; char* nWaitersGone; char* nWaitersToUnblock; } ;
struct TYPE_7__ {int const millitm; scalar_t__ time; } ;
typedef  TYPE_1__ PTW32_STRUCT_TIMEB ;
typedef  int DWORD ;

/* Variables and functions */
 int NUMTHREADS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_5__ abstime ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* cv ; 
 char** error_string ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  mythread ; 
 int FUNC4 (TYPE_2__**) ; 
 scalar_t__ FUNC5 (TYPE_2__**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC11()
{
  int i;
  pthread_t t[NUMTHREADS + 1];
  void* result = (void*)0;
  PTW32_STRUCT_TIMEB currSysTime;
  const DWORD NANOSEC_PER_MILLISEC = 1000000;

  FUNC1(FUNC5(&cv, NULL) == 0);

  FUNC1(FUNC8(&mutex, NULL) == 0);

  /* get current system time */
  FUNC0(&currSysTime);

  abstime.tv_sec = (long)currSysTime.time;
  abstime.tv_nsec = NANOSEC_PER_MILLISEC * currSysTime.millitm;

  abstime.tv_sec += 5;

  FUNC1(FUNC9(&mutex) == 0);

  for (i = 1; i <= NUMTHREADS; i++)
    {
      FUNC1(FUNC6(&t[i], NULL, mythread, (void *)(size_t)i) == 0);
    }

  FUNC1(FUNC10(&mutex) == 0);

  for (i = 1; i <= NUMTHREADS; i++)
    {
      FUNC1(FUNC7(t[i], &result) == 0);
	FUNC1((int)(size_t)result == i);
    }

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

  return 0;
}