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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  udev_event ; 
 int /*<<< orphan*/  udev_mutex ; 
 scalar_t__ udev_refs ; 
 int /*<<< orphan*/ * udev_signalhandler ; 
 int /*<<< orphan*/  udev_thread ; 

void FUNC6(void)
{
	FUNC3(&udev_mutex);

	/* unref udev monitor */
	if (udev_refs && --udev_refs == 0) {
		FUNC1(udev_event);
		FUNC2(udev_thread, NULL);
		FUNC0(udev_event);

		if (udev_signalhandler)
			FUNC5(udev_signalhandler);
		udev_signalhandler = NULL;
	}

	FUNC4(&udev_mutex);
}