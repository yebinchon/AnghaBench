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
struct usbip_imported_device {int /*<<< orphan*/  udev; } ;
struct udev_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct udev_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  udev_context ; 
 struct udev_device* FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct udev_device*) ; 

__attribute__((used)) static struct usbip_imported_device *
FUNC4(struct usbip_imported_device *idev, char *busid)
{
	struct udev_device *sudev;

	sudev = FUNC2(udev_context,
						       "usb", busid);
	if (!sudev) {
		FUNC0("udev_device_new_from_subsystem_sysname failed: %s", busid);
		goto err;
	}
	FUNC1(sudev, &idev->udev);
	FUNC3(sudev);

	return idev;

err:
	return NULL;
}