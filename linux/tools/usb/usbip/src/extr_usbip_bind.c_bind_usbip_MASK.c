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
typedef  int /*<<< orphan*/  bind_attr_path ;

/* Variables and functions */
 char* SYSFS_BUS_NAME ; 
 char* SYSFS_BUS_TYPE ; 
 char* SYSFS_DRIVERS_NAME ; 
 char* SYSFS_MNT_PATH ; 
 int SYSFS_PATH_MAX ; 
 char* USBIP_HOST_DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(char *busid)
{
	char attr_name[] = "bind";
	char bind_attr_path[SYSFS_PATH_MAX];
	int rc = -1;

	FUNC1(bind_attr_path, sizeof(bind_attr_path), "%s/%s/%s/%s/%s/%s",
		 SYSFS_MNT_PATH, SYSFS_BUS_NAME, SYSFS_BUS_TYPE,
		 SYSFS_DRIVERS_NAME, USBIP_HOST_DRV_NAME, attr_name);

	rc = FUNC4(bind_attr_path, busid, FUNC3(busid));
	if (rc < 0) {
		FUNC0("error binding device %s to driver: %s", busid,
		    FUNC2(errno));
		return -1;
	}

	return 0;
}