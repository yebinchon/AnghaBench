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
struct usbip_usb_device {char* path; } ;
typedef  int /*<<< orphan*/  status_attr_path ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int SYSFS_PATH_MAX ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,int) ; 
 int FUNC5 (char*,int,char*,char*) ; 

__attribute__((used)) static int32_t FUNC6(struct usbip_usb_device *udev)
{
	char status_attr_path[SYSFS_PATH_MAX];
	int size;
	int fd;
	int length;
	char status[2] = { 0 };
	int value = 0;

	size = FUNC5(status_attr_path, sizeof(status_attr_path),
			"%s/usbip_status", udev->path);
	if (size < 0 || (unsigned int)size >= sizeof(status_attr_path)) {
		FUNC2("usbip_status path length %i >= %lu or < 0", size,
		    (long unsigned)sizeof(status_attr_path));
		return -1;
	}


	fd = FUNC3(status_attr_path, O_RDONLY);
	if (fd < 0) {
		FUNC2("error opening attribute %s", status_attr_path);
		return -1;
	}

	length = FUNC4(fd, status, 1);
	if (length < 0) {
		FUNC2("error reading attribute %s", status_attr_path);
		FUNC1(fd);
		return -1;
	}

	value = FUNC0(status);

	return value;
}