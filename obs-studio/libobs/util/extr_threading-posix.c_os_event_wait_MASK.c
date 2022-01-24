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
struct TYPE_3__ {int signalled; int /*<<< orphan*/  mutex; int /*<<< orphan*/  manual; int /*<<< orphan*/  cond; } ;
typedef  TYPE_1__ os_event_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(os_event_t *event)
{
	int code = 0;
	FUNC1(&event->mutex);
	if (!event->signalled)
		code = FUNC0(&event->cond, &event->mutex);

	if (code == 0) {
		if (!event->manual)
			event->signalled = false;
		FUNC2(&event->mutex);
	}

	return code;
}