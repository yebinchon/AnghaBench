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
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_MUTEX_RECURSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  python_paths ; 
 int /*<<< orphan*/  tick_mutex ; 
 int /*<<< orphan*/  timer_mutex ; 

void FUNC4(void)
{
	FUNC0(python_paths);

	pthread_mutexattr_t attr;
	FUNC2(&attr);
	FUNC3(&attr, PTHREAD_MUTEX_RECURSIVE);

	FUNC1(&tick_mutex, NULL);
	FUNC1(&timer_mutex, &attr);
}