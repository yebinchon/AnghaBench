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
 scalar_t__ ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int bankAccount ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct timespec*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rwlock1 ; 

void * FUNC4(void * arg)
{
  int ba = -1;
  struct timespec abstime = { 0, 0 };
  PTW32_STRUCT_TIMEB currSysTime;
  const DWORD NANOSEC_PER_MILLISEC = 1000000;

  FUNC0(&currSysTime);

  abstime.tv_sec = (long)currSysTime.time;
  abstime.tv_nsec = NANOSEC_PER_MILLISEC * currSysTime.millitm;


  if ((int) (size_t)arg == 1)
    {
      abstime.tv_sec += 1;
      FUNC1(FUNC2(&rwlock1, &abstime) == ETIMEDOUT);
      ba = 0;
    }
  else if ((int) (size_t)arg == 2)
    {
      abstime.tv_sec += 3;
      FUNC1(FUNC2(&rwlock1, &abstime) == 0);
      ba = bankAccount;
      FUNC1(FUNC3(&rwlock1) == 0);
    }

  return ((void *)(size_t)ba);
}