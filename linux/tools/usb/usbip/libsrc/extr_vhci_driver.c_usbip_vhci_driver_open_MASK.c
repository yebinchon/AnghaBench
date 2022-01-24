#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usbip_vhci_driver {int dummy; } ;
struct usbip_imported_device {int dummy; } ;
struct udev_device {int dummy; } ;
struct TYPE_4__ {int nports; int ncontrollers; struct udev_device* hc_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBIP_VHCI_BUS_TYPE ; 
 int /*<<< orphan*/  USBIP_VHCI_DEVICE_NAME ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 () ; 
 int FUNC5 (struct udev_device*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  udev_context ; 
 struct udev_device* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct udev_device*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_1__* vhci_driver ; 

int FUNC11(void)
{
	int nports;
	struct udev_device *hc_device;

	udev_context = FUNC9();
	if (!udev_context) {
		FUNC2("udev_new failed");
		return -1;
	}

	/* will be freed in usbip_driver_close() */
	hc_device =
		FUNC7(udev_context,
						       USBIP_VHCI_BUS_TYPE,
						       USBIP_VHCI_DEVICE_NAME);
	if (!hc_device) {
		FUNC2("udev_device_new_from_subsystem_sysname failed");
		goto err;
	}

	nports = FUNC5(hc_device);
	if (nports <= 0) {
		FUNC2("no available ports");
		goto err;
	}
	FUNC1("available ports: %d", nports);

	vhci_driver = FUNC0(1, sizeof(struct usbip_vhci_driver) +
			nports * sizeof(struct usbip_imported_device));
	if (!vhci_driver) {
		FUNC2("vhci_driver allocation failed");
		goto err;
	}

	vhci_driver->nports = nports;
	vhci_driver->hc_device = hc_device;
	vhci_driver->ncontrollers = FUNC4();
	FUNC1("available controllers: %d", vhci_driver->ncontrollers);

	if (vhci_driver->ncontrollers <=0) {
		FUNC2("no available usb controllers");
		goto err;
	}

	if (FUNC6())
		goto err;

	return 0;

err:
	FUNC8(hc_device);

	if (vhci_driver)
		FUNC3(vhci_driver);

	vhci_driver = NULL;

	FUNC10(udev_context);

	return -1;
}