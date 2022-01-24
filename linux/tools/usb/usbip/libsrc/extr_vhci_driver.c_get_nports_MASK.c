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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (struct udev_device*,char*) ; 

__attribute__((used)) static int FUNC3(struct udev_device *hc_device)
{
	const char *attr_nports;

	attr_nports = FUNC2(hc_device, "nports");
	if (!attr_nports) {
		FUNC0("udev_device_get_sysattr_value nports failed");
		return -1;
	}

	return (int)FUNC1(attr_nports, NULL, 10);
}