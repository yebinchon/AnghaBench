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
struct usbip_host_driver {int /*<<< orphan*/  edev_list; scalar_t__ ndevs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct usbip_host_driver*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct usbip_host_driver *hdriver)
{
	int rc;

	FUNC2(&hdriver->edev_list);

	hdriver->ndevs = 0;
	FUNC0(&hdriver->edev_list);

	rc = FUNC1(hdriver);
	if (rc < 0)
		return -1;

	return 0;
}