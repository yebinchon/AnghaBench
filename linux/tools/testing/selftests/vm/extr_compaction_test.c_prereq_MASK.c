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

/* Variables and functions */
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,char*,int) ; 

int FUNC4(void)
{
	char allowed;
	int fd;

	fd = FUNC1("/proc/sys/vm/compact_unevictable_allowed",
		  O_RDONLY | O_NONBLOCK);
	if (fd < 0) {
		FUNC2("Failed to open\n"
		       "/proc/sys/vm/compact_unevictable_allowed\n");
		return -1;
	}

	if (FUNC3(fd, &allowed, sizeof(char)) != sizeof(char)) {
		FUNC2("Failed to read from\n"
		       "/proc/sys/vm/compact_unevictable_allowed\n");
		FUNC0(fd);
		return -1;
	}

	FUNC0(fd);
	if (allowed == '1')
		return 0;

	return -1;
}