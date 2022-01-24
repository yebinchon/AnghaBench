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
struct ff_timer {int abort; int /*<<< orphan*/  cond; int /*<<< orphan*/  mutexattr; int /*<<< orphan*/  mutex; int /*<<< orphan*/  timer_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct ff_timer *timer)
{
	void *thread_result;

	FUNC0(timer != NULL);

	FUNC5(&timer->mutex);
	timer->abort = true;
	FUNC2(&timer->cond);
	FUNC6(&timer->mutex);

	FUNC3(timer->timer_thread, &thread_result);

	FUNC4(&timer->mutex);
	FUNC7(&timer->mutexattr);
	FUNC1(&timer->cond);
}