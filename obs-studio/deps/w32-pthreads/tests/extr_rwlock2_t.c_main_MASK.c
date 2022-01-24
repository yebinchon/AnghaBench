#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timespec {long tv_sec; int tv_nsec; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_3__ {int const millitm; scalar_t__ time; } ;
typedef  TYPE_1__ PTW32_STRUCT_TIMEB ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * PTHREAD_RWLOCK_INITIALIZER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,struct timespec*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * rwlock ; 

int
FUNC5()
{
  struct timespec abstime = { 0, 0 };
  PTW32_STRUCT_TIMEB currSysTime;
  const DWORD NANOSEC_PER_MILLISEC = 1000000;

  FUNC0(&currSysTime);

  abstime.tv_sec = (long)currSysTime.time;
  abstime.tv_nsec = NANOSEC_PER_MILLISEC * currSysTime.millitm;

  abstime.tv_sec += 1;

  FUNC1(rwlock == PTHREAD_RWLOCK_INITIALIZER);

  FUNC1(FUNC3(&rwlock, &abstime) == 0);

  FUNC1(rwlock != PTHREAD_RWLOCK_INITIALIZER);

  FUNC1(rwlock != NULL);

  FUNC1(FUNC4(&rwlock) == 0);

  FUNC1(FUNC2(&rwlock) == 0);

  FUNC1(rwlock == NULL);

  return 0;
}