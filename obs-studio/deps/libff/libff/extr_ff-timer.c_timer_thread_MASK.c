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
struct timespec {int tv_sec; int tv_nsec; } ;
struct ff_timer {scalar_t__ next_wake; int needs_wake; int /*<<< orphan*/  opaque; int /*<<< orphan*/  (* callback ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; scalar_t__ abort; } ;

/* Variables and functions */
 int AV_TIME_BASE ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC6(void *opaque)
{
	struct ff_timer *timer = (struct ff_timer *)opaque;
	int ret;

	while (true) {
		bool callback = false;
		FUNC3(&timer->mutex);

		if (timer->abort) {
			FUNC4(&timer->mutex);
			break;
		}

		uint64_t current_time = FUNC0();
		if (current_time < timer->next_wake) {
			struct timespec sleep_time = {
			        .tv_sec = timer->next_wake / AV_TIME_BASE,
			        .tv_nsec = (timer->next_wake % AV_TIME_BASE) *
			                   1000};

			ret = FUNC2(
			        &timer->cond, &timer->mutex, &sleep_time);
			if (ret != ETIMEDOUT) {
				// failed to wait, just sleep
				FUNC1((unsigned)(timer->next_wake -
				                     current_time));
			}

			FUNC4(&timer->mutex);
			continue;

			// we can be woken up merely to set a sooner wake time

		} else {
			// no new next_wake, sleep until we get something
			FUNC1(1000);
		}

		// we woke up for some reason
		current_time = FUNC0();
		if (timer->next_wake <= current_time || timer->needs_wake) {
			callback = true;
			timer->needs_wake = false;
		}

		FUNC4(&timer->mutex);

		if (callback)
			timer->callback(timer->opaque);
	}

	return NULL;
}