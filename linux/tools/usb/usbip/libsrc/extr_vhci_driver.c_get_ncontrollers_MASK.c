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
struct udev_device {int dummy; } ;
typedef  int /*<<< orphan*/ **** dirent ;
struct TYPE_2__ {int /*<<< orphan*/  hc_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ******) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *******,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct udev_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct udev_device*) ; 
 TYPE_1__* vhci_driver ; 
 int /*<<< orphan*/  vhci_hcd_filter ; 

__attribute__((used)) static int FUNC5(void)
{
	struct dirent **namelist;
	struct udev_device *platform;
	int n;

	platform = FUNC3(vhci_driver->hc_device);
	if (platform == NULL)
		return -1;

	n = FUNC2(FUNC4(platform), &namelist, vhci_hcd_filter, NULL);
	if (n < 0)
		FUNC0("scandir failed");
	else {
		for (int i = 0; i < n; i++)
			FUNC1(namelist[i]);
		FUNC1(namelist);
	}

	return n;
}