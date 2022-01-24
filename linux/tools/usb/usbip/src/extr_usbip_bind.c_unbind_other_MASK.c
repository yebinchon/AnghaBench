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
typedef  enum unbind_status { ____Placeholder_unbind_status } unbind_status ;

/* Variables and functions */
 char* SYSFS_BUS_NAME ; 
 char* SYSFS_BUS_TYPE ; 
 char* SYSFS_DRIVERS_NAME ; 
 char* SYSFS_MNT_PATH ; 
 int SYSFS_PATH_MAX ; 
 int UNBIND_ST_FAILED ; 
 int UNBIND_ST_OK ; 
 int UNBIND_ST_USBIP_HOST ; 
 char* USBIP_HOST_DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,char*,char*,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (struct udev_device*) ; 
 char* FUNC6 (struct udev_device*,char*) ; 
 struct udev_device* FUNC7 (struct udev*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct udev_device*) ; 
 struct udev* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct udev*) ; 
 int FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(char *busid)
{
	enum unbind_status status = UNBIND_ST_OK;

	char attr_name[] = "unbind";
	char unbind_attr_path[SYSFS_PATH_MAX];
	int rc = -1;

	struct udev *udev;
	struct udev_device *dev;
	const char *driver;
	const char *bDevClass;

	/* Create libudev context. */
	udev = FUNC9();

	/* Get the device. */
	dev = FUNC7(udev, "usb", busid);
	if (!dev) {
		FUNC0("unable to find device with bus ID %s", busid);
		goto err_close_busid_dev;
	}

	/* Check what kind of device it is. */
	bDevClass  = FUNC6(dev, "bDeviceClass");
	if (!bDevClass) {
		FUNC0("unable to get bDevClass device attribute");
		goto err_close_busid_dev;
	}

	if (!FUNC4(bDevClass, "09", FUNC3(bDevClass))) {
		FUNC0("skip unbinding of hub");
		goto err_close_busid_dev;
	}

	/* Get the device driver. */
	driver = FUNC5(dev);
	if (!driver) {
		/* No driver bound to this device. */
		goto out;
	}

	if (!FUNC4(USBIP_HOST_DRV_NAME, driver,
				FUNC3(USBIP_HOST_DRV_NAME))) {
		/* Already bound to usbip-host. */
		status = UNBIND_ST_USBIP_HOST;
		goto out;
	}

	/* Unbind device from driver. */
	FUNC2(unbind_attr_path, sizeof(unbind_attr_path), "%s/%s/%s/%s/%s/%s",
		 SYSFS_MNT_PATH, SYSFS_BUS_NAME, SYSFS_BUS_TYPE,
		 SYSFS_DRIVERS_NAME, driver, attr_name);

	rc = FUNC11(unbind_attr_path, busid, FUNC3(busid));
	if (rc < 0) {
		FUNC1("error unbinding device %s from driver", busid);
		goto err_close_busid_dev;
	}

	goto out;

err_close_busid_dev:
	status = UNBIND_ST_FAILED;
out:
	FUNC8(dev);
	FUNC10(udev);

	return status;
}