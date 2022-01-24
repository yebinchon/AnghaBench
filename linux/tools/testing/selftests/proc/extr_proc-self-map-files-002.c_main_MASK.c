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
 int MAP_FILE ; 
 int MAP_FIXED ; 
 int MAP_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_NONE ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (void*,int const,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(void)
{
	const int PAGE_SIZE = FUNC5(_SC_PAGESIZE);
	const unsigned long va_max = 1UL << 32;
	unsigned long va;
	void *p;
	int fd;
	unsigned long a, b;

	fd = FUNC3("/dev/zero", O_RDONLY);
	if (fd == -1)
		return 1;

	for (va = 0; va < va_max; va += PAGE_SIZE) {
		p = FUNC2((void *)va, PAGE_SIZE, PROT_NONE, MAP_PRIVATE|MAP_FILE|MAP_FIXED, fd, 0);
		if (p == (void *)va)
			break;
	}
	if (va == va_max) {
		FUNC1(stderr, "error: mmap doesn't like you\n");
		return 1;
	}

	a = (unsigned long)p;
	b = (unsigned long)p + PAGE_SIZE;

	FUNC4("/proc/self/map_files/%lx-%lx", a, b);
	FUNC0("/proc/self/map_files/ %lx-%lx", a, b);
	FUNC0("/proc/self/map_files/%lx -%lx", a, b);
	FUNC0("/proc/self/map_files/%lx- %lx", a, b);
	FUNC0("/proc/self/map_files/%lx-%lx ", a, b);
	FUNC0("/proc/self/map_files/0%lx-%lx", a, b);
	FUNC0("/proc/self/map_files/%lx-0%lx", a, b);
	if (sizeof(long) == 4) {
		FUNC0("/proc/self/map_files/100000000%lx-%lx", a, b);
		FUNC0("/proc/self/map_files/%lx-100000000%lx", a, b);
	} else if (sizeof(long) == 8) {
		FUNC0("/proc/self/map_files/10000000000000000%lx-%lx", a, b);
		FUNC0("/proc/self/map_files/%lx-10000000000000000%lx", a, b);
	} else
		return 1;

	return 0;
}