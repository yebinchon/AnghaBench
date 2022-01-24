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
typedef  scalar_t__ uint64_t ;
struct ff_timer {int needs_wake; scalar_t__ next_wake; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ff_timer *timer, uint64_t microseconds)
{
	uint64_t cur_time = FUNC0();
	uint64_t new_wake_time = cur_time + microseconds;

	FUNC2(&timer->mutex);

	timer->needs_wake = true;
	if (new_wake_time < timer->next_wake || cur_time > timer->next_wake)
		timer->next_wake = new_wake_time;

	FUNC1(&timer->cond);

	FUNC3(&timer->mutex);
}