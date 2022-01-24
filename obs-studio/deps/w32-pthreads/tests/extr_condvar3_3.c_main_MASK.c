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
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  cnd ; 
 int /*<<< orphan*/  mtx ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8()
{
   int rc;

   struct timespec abstime = { 0, 0 };
   PTW32_STRUCT_TIMEB currSysTime;
   const DWORD NANOSEC_PER_MILLISEC = 1000000;

   FUNC1(FUNC2(&cnd, 0) == 0);
   FUNC1(FUNC5(&mtx, 0) == 0);

   /* get current system time */
   FUNC0(&currSysTime);

   abstime.tv_sec = (long)currSysTime.time;
   abstime.tv_nsec = NANOSEC_PER_MILLISEC * currSysTime.millitm;
   abstime.tv_sec += 1;

   /* Here pthread_cond_timedwait should time out after one second. */

   FUNC1(FUNC6(&mtx) == 0);

   FUNC1((rc = FUNC4(&cnd, &mtx, &abstime)) == ETIMEDOUT);

   FUNC1(FUNC7(&mtx) == 0);

   /* Here, the condition variable is signaled, but there are no
      threads waiting on it. The signal should be lost and
      the next pthread_cond_timedwait should time out too. */

//   assert(pthread_mutex_lock(&mtx) == 0);

   FUNC1((rc = FUNC3(&cnd)) == 0);

//   assert(pthread_mutex_unlock(&mtx) == 0);

   FUNC1(FUNC6(&mtx) == 0);

   abstime.tv_sec = (long)currSysTime.time;
   abstime.tv_nsec = NANOSEC_PER_MILLISEC * currSysTime.millitm;
   abstime.tv_sec += 1;

   FUNC1((rc = FUNC4(&cnd, &mtx, &abstime)) == ETIMEDOUT);

   FUNC1(FUNC7(&mtx) == 0);

   return 0;
}