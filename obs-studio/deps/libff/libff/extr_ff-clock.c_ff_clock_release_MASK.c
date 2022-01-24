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
struct ff_clock {int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  retain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ff_clock*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ff_clock **clock)
{
	if (FUNC1(&(*clock)->retain) == 0) {
		FUNC2(&(*clock)->cond);
		FUNC3(&(*clock)->mutex);
		FUNC0(*clock);
	}

	*clock = NULL;
}