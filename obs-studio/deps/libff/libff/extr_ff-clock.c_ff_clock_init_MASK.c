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
struct ff_clock {int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ff_clock*) ; 
 struct ff_clock* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct ff_clock *FUNC5(void)
{
	struct ff_clock *clock = FUNC1(sizeof(struct ff_clock));

	if (clock == NULL)
		return NULL;

	if (FUNC4(&clock->mutex, NULL) != 0)
		goto fail;

	if (FUNC2(&clock->cond, NULL) != 0)
		goto fail1;

	return clock;

fail1:
	FUNC3(&clock->mutex);
fail:
	FUNC0(clock);

	return NULL;
}