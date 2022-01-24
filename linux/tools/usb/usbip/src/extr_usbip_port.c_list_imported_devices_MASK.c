#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usbip_imported_device {int dummy; } ;
struct TYPE_2__ {int nports; struct usbip_imported_device* idev; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBIDS_FILE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (struct usbip_imported_device*) ; 
 TYPE_1__* vhci_driver ; 

__attribute__((used)) static int FUNC7(void)
{
	int i;
	struct usbip_imported_device *idev;
	int ret;

	if (FUNC3(USBIDS_FILE))
		FUNC0("failed to open %s", USBIDS_FILE);

	ret = FUNC5();
	if (ret < 0) {
		FUNC0("open vhci_driver");
		goto err_names_free;
	}

	FUNC1("Imported USB devices\n");
	FUNC1("====================\n");

	for (i = 0; i < vhci_driver->nports; i++) {
		idev = &vhci_driver->idev[i];

		if (FUNC6(idev) < 0)
			goto err_driver_close;
	}

	FUNC4();
	FUNC2();

	return ret;

err_driver_close:
	FUNC4();
err_names_free:
	FUNC2();
	return -1;
}