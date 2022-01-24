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
struct TYPE_3__ {int signalled; int /*<<< orphan*/  mutex; int /*<<< orphan*/  manual; } ;
typedef  TYPE_1__ os_event_t ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(os_event_t *event)
{
	int ret = EAGAIN;

	FUNC0(&event->mutex);
	if (event->signalled) {
		if (!event->manual)
			event->signalled = false;
		ret = 0;
	}
	FUNC1(&event->mutex);

	return ret;
}