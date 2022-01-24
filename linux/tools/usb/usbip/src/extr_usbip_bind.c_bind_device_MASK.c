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
struct udev_device {int dummy; } ;
struct udev {int dummy; } ;

/* Variables and functions */
 int UNBIND_ST_FAILED ; 
 int UNBIND_ST_USBIP_HOST ; 
 char* USBIP_HOST_DRV_NAME ; 
 int /*<<< orphan*/  USBIP_VHCI_DRV_NAME ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (struct udev_device*) ; 
 struct udev_device* FUNC6 (struct udev*,char*,char*) ; 
 struct udev* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct udev*) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(char *busid)
{
	int rc;
	struct udev *udev;
	struct udev_device *dev;
	const char *devpath;

	/* Check whether the device with this bus ID exists. */
	udev = FUNC7();
	dev = FUNC6(udev, "usb", busid);
	if (!dev) {
		FUNC1("device with the specified bus ID does not exist");
		return -1;
	}
	devpath = FUNC5(dev);
	FUNC8(udev);

	/* If the device is already attached to vhci_hcd - bail out */
	if (FUNC4(devpath, USBIP_VHCI_DRV_NAME)) {
		FUNC1("bind loop detected: device: %s is attached to %s\n",
		    devpath, USBIP_VHCI_DRV_NAME);
		return -1;
	}

	rc = FUNC9(busid);
	if (rc == UNBIND_ST_FAILED) {
		FUNC1("could not unbind driver from device on busid %s", busid);
		return -1;
	} else if (rc == UNBIND_ST_USBIP_HOST) {
		FUNC1("device on busid %s is already bound to %s", busid,
		    USBIP_HOST_DRV_NAME);
		return -1;
	}

	rc = FUNC3(busid, 1);
	if (rc < 0) {
		FUNC1("unable to bind device on %s", busid);
		return -1;
	}

	rc = FUNC0(busid);
	if (rc < 0) {
		FUNC1("could not bind device to %s", USBIP_HOST_DRV_NAME);
		FUNC3(busid, 0);
		return -1;
	}

	FUNC2("bind device on busid %s: complete", busid);

	return 0;
}