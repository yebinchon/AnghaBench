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
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_3__ {int const millitm; scalar_t__ time; } ;
typedef  TYPE_1__ PTW32_STRUCT_TIMEB ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  func ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct timespec*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rwlock1 ; 
 int washere ; 

int
FUNC6()
{
  pthread_t t;
  struct timespec abstime = { 0, 0 };
  PTW32_STRUCT_TIMEB currSysTime;
  const DWORD NANOSEC_PER_MILLISEC = 1000000;

  FUNC0(&currSysTime);

  abstime.tv_sec = (long)currSysTime.time;
  abstime.tv_nsec = NANOSEC_PER_MILLISEC * currSysTime.millitm;

  abstime.tv_sec += 1;

  FUNC2(FUNC4(&rwlock1, &abstime) == 0);

  FUNC2(FUNC3(&t, NULL, func, NULL) == 0);

  FUNC1(2000);

  FUNC2(FUNC5(&rwlock1) == 0);

  FUNC2(washere == 1);

  return 0;
}