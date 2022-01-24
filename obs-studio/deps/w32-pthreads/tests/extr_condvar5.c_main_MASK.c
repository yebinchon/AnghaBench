#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct timespec {long tv_sec; int tv_nsec; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ pthread_t ;
struct TYPE_10__ {scalar_t__ shared; int /*<<< orphan*/ * notbusy; int /*<<< orphan*/ * lock; } ;
struct TYPE_9__ {int const millitm; scalar_t__ time; } ;
typedef  TYPE_2__ PTW32_STRUCT_TIMEB ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ETIMEDOUT ; 
 int NUMTHREADS ; 
 int /*<<< orphan*/ * PTHREAD_COND_INITIALIZER ; 
 int /*<<< orphan*/ * PTHREAD_MUTEX_INITIALIZER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_6__ cvthing ; 
 int /*<<< orphan*/  mythread ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,struct timespec*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC5 (TYPE_1__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ **) ; 
 TYPE_1__ FUNC9 () ; 

int
FUNC10()
{
  pthread_t t[NUMTHREADS];
  struct timespec abstime = { 0, 0 };
  PTW32_STRUCT_TIMEB currSysTime;
  const DWORD NANOSEC_PER_MILLISEC = 1000000;

  cvthing.shared = 0;

  FUNC1((t[0] = FUNC9()).p != NULL);

  FUNC1(cvthing.notbusy == PTHREAD_COND_INITIALIZER);

  FUNC1(cvthing.lock == PTHREAD_MUTEX_INITIALIZER);

  FUNC1(FUNC7(&cvthing.lock) == 0);

  FUNC1(cvthing.lock != PTHREAD_MUTEX_INITIALIZER);

  /* get current system time */
  FUNC0(&currSysTime);

  abstime.tv_sec = (long)currSysTime.time;
  abstime.tv_nsec = NANOSEC_PER_MILLISEC * currSysTime.millitm;

  abstime.tv_sec += 5;

  FUNC1(FUNC3(&cvthing.notbusy, &cvthing.lock, &abstime) == ETIMEDOUT);
  
  FUNC1(cvthing.notbusy != PTHREAD_COND_INITIALIZER);

  FUNC1(FUNC4(&t[1], NULL, mythread, (void *) 1) == 0);

  FUNC0(&currSysTime);

  abstime.tv_sec = (long)currSysTime.time;
  abstime.tv_nsec = NANOSEC_PER_MILLISEC * currSysTime.millitm;

  abstime.tv_sec += 5;

  while (! (cvthing.shared > 0))
    FUNC1(FUNC3(&cvthing.notbusy, &cvthing.lock, &abstime) == 0);

  FUNC1(cvthing.shared > 0);

  FUNC1(FUNC8(&cvthing.lock) == 0);

  FUNC1(FUNC5(t[1], NULL) == 0);

  FUNC1(FUNC6(&cvthing.lock) == 0);

  FUNC1(cvthing.lock == NULL);

  FUNC1(FUNC2(&cvthing.notbusy) == 0);

  FUNC1(cvthing.notbusy == NULL);

  return 0;
}