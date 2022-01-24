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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  detach_attr_path ;
typedef  int /*<<< orphan*/  buff ;
struct TYPE_2__ {int /*<<< orphan*/  hc_device; } ;

/* Variables and functions */
 int SYSFS_PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* vhci_driver ; 
 int FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 

int FUNC5(uint8_t port)
{
	char detach_attr_path[SYSFS_PATH_MAX];
	char attr_detach[] = "detach";
	char buff[200]; /* what size should be ? */
	const char *path;
	int ret;

	FUNC1(buff, sizeof(buff), "%u", port);
	FUNC0("writing: %s", buff);

	path = FUNC3(vhci_driver->hc_device);
	FUNC1(detach_attr_path, sizeof(detach_attr_path), "%s/%s",
		 path, attr_detach);
	FUNC0("detach attribute path: %s", detach_attr_path);

	ret = FUNC4(detach_attr_path, buff, FUNC2(buff));
	if (ret < 0) {
		FUNC0("write_sysfs_attribute failed");
		return -1;
	}

	FUNC0("detached port: %d", port);

	return 0;
}