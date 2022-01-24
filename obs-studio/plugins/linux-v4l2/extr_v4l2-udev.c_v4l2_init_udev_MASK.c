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

/* Variables and functions */
 int /*<<< orphan*/  OS_EVENT_TYPE_MANUAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  udev_event ; 
 int /*<<< orphan*/  udev_event_thread ; 
 int /*<<< orphan*/  udev_mutex ; 
 scalar_t__ udev_refs ; 
 int /*<<< orphan*/  udev_signalhandler ; 
 int /*<<< orphan*/  udev_signals ; 
 int /*<<< orphan*/  udev_thread ; 

void FUNC6(void)
{
	FUNC2(&udev_mutex);

	/* set up udev */
	if (udev_refs == 0) {
		if (FUNC0(&udev_event, OS_EVENT_TYPE_MANUAL) != 0)
			goto fail;
		if (FUNC1(&udev_thread, NULL, udev_event_thread,
				   NULL) != 0)
			goto fail;

		udev_signalhandler = FUNC5();
		if (!udev_signalhandler)
			goto fail;
		FUNC4(udev_signalhandler, udev_signals);
	}
	udev_refs++;

fail:
	FUNC3(&udev_mutex);
}