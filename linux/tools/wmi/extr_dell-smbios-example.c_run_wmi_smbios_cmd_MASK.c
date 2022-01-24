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
struct dell_wmi_smbios_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELL_WMI_SMBIOS_CMD ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct dell_wmi_smbios_buffer*) ; 
 int /*<<< orphan*/  ioctl_devfs ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dell_wmi_smbios_buffer *buffer)
{
	int fd;
	int ret;

	fd = FUNC2(ioctl_devfs, O_NONBLOCK);
	ret = FUNC1(fd, DELL_WMI_SMBIOS_CMD, buffer);
	FUNC0(fd);
	return ret;
}