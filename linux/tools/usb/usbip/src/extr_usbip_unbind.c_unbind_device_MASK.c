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
typedef  int /*<<< orphan*/  unbind_attr_path ;
struct udev_device {int dummy; } ;
struct udev {int dummy; } ;

/* Variables and functions */
 char* SYSFS_BUS_NAME ; 
 char* SYSFS_DRIVERS_NAME ; 
 char* SYSFS_MNT_PATH ; 
 int SYSFS_PATH_MAX ; 
 char* USBIP_HOST_DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*,char*,char*,char*,char*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (struct udev_device*) ; 
 struct udev_device* FUNC7 (struct udev*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct udev_device*) ; 
 struct udev* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct udev*) ; 
 int FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(char *busid)
{
	char bus_type[] = "usb";
	int rc, ret = -1;

	char unbind_attr_name[] = "unbind";
	char unbind_attr_path[SYSFS_PATH_MAX];
	char rebind_attr_name[] = "rebind";
	char rebind_attr_path[SYSFS_PATH_MAX];

	struct udev *udev;
	struct udev_device *dev;
	const char *driver;

	/* Create libudev context. */
	udev = FUNC9();

	/* Check whether the device with this bus ID exists. */
	dev = FUNC7(udev, "usb", busid);
	if (!dev) {
		FUNC0("device with the specified bus ID does not exist");
		goto err_close_udev;
	}

	/* Check whether the device is using usbip-host driver. */
	driver = FUNC6(dev);
	if (!driver || FUNC4(driver, "usbip-host")) {
		FUNC0("device is not bound to usbip-host driver");
		goto err_close_udev;
	}

	/* Unbind device from driver. */
	FUNC3(unbind_attr_path, sizeof(unbind_attr_path), "%s/%s/%s/%s/%s/%s",
		 SYSFS_MNT_PATH, SYSFS_BUS_NAME, bus_type, SYSFS_DRIVERS_NAME,
		 USBIP_HOST_DRV_NAME, unbind_attr_name);

	rc = FUNC11(unbind_attr_path, busid, FUNC5(busid));
	if (rc < 0) {
		FUNC0("error unbinding device %s from driver", busid);
		goto err_close_udev;
	}

	/* Notify driver of unbind. */
	rc = FUNC2(busid, 0);
	if (rc < 0) {
		FUNC0("unable to unbind device on %s", busid);
		goto err_close_udev;
	}

	/* Trigger new probing. */
	FUNC3(rebind_attr_path, sizeof(unbind_attr_path), "%s/%s/%s/%s/%s/%s",
			SYSFS_MNT_PATH, SYSFS_BUS_NAME, bus_type, SYSFS_DRIVERS_NAME,
			USBIP_HOST_DRV_NAME, rebind_attr_name);

	rc = FUNC11(rebind_attr_path, busid, FUNC5(busid));
	if (rc < 0) {
		FUNC0("error rebinding");
		goto err_close_udev;
	}

	ret = 0;
	FUNC1("unbind device on busid %s: complete", busid);

err_close_udev:
	FUNC8(dev);
	FUNC10(udev);

	return ret;
}