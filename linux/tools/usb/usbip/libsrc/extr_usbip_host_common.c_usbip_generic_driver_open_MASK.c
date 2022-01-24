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
struct usbip_host_driver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct usbip_host_driver*) ; 
 int /*<<< orphan*/  udev_context ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct usbip_host_driver *hdriver)
{
	int rc;

	udev_context = FUNC2();
	if (!udev_context) {
		FUNC0("udev_new failed");
		return -1;
	}

	rc = FUNC1(hdriver);
	if (rc < 0)
		goto err;
	return 0;
err:
	FUNC3(udev_context);
	return -1;
}