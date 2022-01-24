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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int*,int*) ; 

int FUNC3(void)
{
	uint64_t start, u0, u1, i0, i1;
	int fd;

	fd = FUNC1("/proc/uptime", O_RDONLY);
	FUNC0(fd >= 0);

	FUNC2(fd, &u0, &i0);
	start = u0;
	do {
		FUNC2(fd, &u1, &i1);
		FUNC0(u1 >= u0);
		FUNC0(i1 >= i0);
		u0 = u1;
		i0 = i1;
	} while (u1 - start < 100);

	return 0;
}