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
 unsigned long BASE_ADDRESS ; 
 unsigned long MAP_ANONYMOUS ; 
 char* MAP_FAILED ; 
 unsigned long MAP_FIXED_NOREPLACE ; 
 unsigned long MAP_PRIVATE ; 
 int /*<<< orphan*/  PROT_NONE ; 
 int /*<<< orphan*/  _SC_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ errno ; 
 char* FUNC1 (void*,unsigned long,int /*<<< orphan*/ ,unsigned long,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(void)
{
	unsigned long flags, addr, size, page_size;
	char *p;

	page_size = FUNC4(_SC_PAGE_SIZE);

	flags = MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED_NOREPLACE;

	// Check we can map all the areas we need below
	errno = 0;
	addr = BASE_ADDRESS;
	size = 5 * page_size;
	p = FUNC1((void *)addr, size, PROT_NONE, flags, -1, 0);

	FUNC3("mmap() @ 0x%lx-0x%lx p=%p result=%m\n", addr, addr + size, p);

	if (p == MAP_FAILED) {
		FUNC0();
		FUNC3("Error: couldn't map the space we need for the test\n");
		return 1;
	}

	errno = 0;
	if (FUNC2((void *)addr, 5 * page_size) != 0) {
		FUNC0();
		FUNC3("Error: munmap failed!?\n");
		return 1;
	}
	FUNC3("unmap() successful\n");

	errno = 0;
	addr = BASE_ADDRESS + page_size;
	size = 3 * page_size;
	p = FUNC1((void *)addr, size, PROT_NONE, flags, -1, 0);
	FUNC3("mmap() @ 0x%lx-0x%lx p=%p result=%m\n", addr, addr + size, p);

	if (p == MAP_FAILED) {
		FUNC0();
		FUNC3("Error: first mmap() failed unexpectedly\n");
		return 1;
	}

	/*
	 * Exact same mapping again:
	 *   base |  free  | new
	 *     +1 | mapped | new
	 *     +2 | mapped | new
	 *     +3 | mapped | new
	 *     +4 |  free  | new
	 */
	errno = 0;
	addr = BASE_ADDRESS;
	size = 5 * page_size;
	p = FUNC1((void *)addr, size, PROT_NONE, flags, -1, 0);
	FUNC3("mmap() @ 0x%lx-0x%lx p=%p result=%m\n", addr, addr + size, p);

	if (p != MAP_FAILED) {
		FUNC0();
		FUNC3("Error:1: mmap() succeeded when it shouldn't have\n");
		return 1;
	}

	/*
	 * Second mapping contained within first:
	 *
	 *   base |  free  |
	 *     +1 | mapped |
	 *     +2 | mapped | new
	 *     +3 | mapped |
	 *     +4 |  free  |
	 */
	errno = 0;
	addr = BASE_ADDRESS + (2 * page_size);
	size = page_size;
	p = FUNC1((void *)addr, size, PROT_NONE, flags, -1, 0);
	FUNC3("mmap() @ 0x%lx-0x%lx p=%p result=%m\n", addr, addr + size, p);

	if (p != MAP_FAILED) {
		FUNC0();
		FUNC3("Error:2: mmap() succeeded when it shouldn't have\n");
		return 1;
	}

	/*
	 * Overlap end of existing mapping:
	 *   base |  free  |
	 *     +1 | mapped |
	 *     +2 | mapped |
	 *     +3 | mapped | new
	 *     +4 |  free  | new
	 */
	errno = 0;
	addr = BASE_ADDRESS + (3 * page_size);
	size = 2 * page_size;
	p = FUNC1((void *)addr, size, PROT_NONE, flags, -1, 0);
	FUNC3("mmap() @ 0x%lx-0x%lx p=%p result=%m\n", addr, addr + size, p);

	if (p != MAP_FAILED) {
		FUNC0();
		FUNC3("Error:3: mmap() succeeded when it shouldn't have\n");
		return 1;
	}

	/*
	 * Overlap start of existing mapping:
	 *   base |  free  | new
	 *     +1 | mapped | new
	 *     +2 | mapped |
	 *     +3 | mapped |
	 *     +4 |  free  |
	 */
	errno = 0;
	addr = BASE_ADDRESS;
	size = 2 * page_size;
	p = FUNC1((void *)addr, size, PROT_NONE, flags, -1, 0);
	FUNC3("mmap() @ 0x%lx-0x%lx p=%p result=%m\n", addr, addr + size, p);

	if (p != MAP_FAILED) {
		FUNC0();
		FUNC3("Error:4: mmap() succeeded when it shouldn't have\n");
		return 1;
	}

	/*
	 * Adjacent to start of existing mapping:
	 *   base |  free  | new
	 *     +1 | mapped |
	 *     +2 | mapped |
	 *     +3 | mapped |
	 *     +4 |  free  |
	 */
	errno = 0;
	addr = BASE_ADDRESS;
	size = page_size;
	p = FUNC1((void *)addr, size, PROT_NONE, flags, -1, 0);
	FUNC3("mmap() @ 0x%lx-0x%lx p=%p result=%m\n", addr, addr + size, p);

	if (p == MAP_FAILED) {
		FUNC0();
		FUNC3("Error:5: mmap() failed when it shouldn't have\n");
		return 1;
	}

	/*
	 * Adjacent to end of existing mapping:
	 *   base |  free  |
	 *     +1 | mapped |
	 *     +2 | mapped |
	 *     +3 | mapped |
	 *     +4 |  free  |  new
	 */
	errno = 0;
	addr = BASE_ADDRESS + (4 * page_size);
	size = page_size;
	p = FUNC1((void *)addr, size, PROT_NONE, flags, -1, 0);
	FUNC3("mmap() @ 0x%lx-0x%lx p=%p result=%m\n", addr, addr + size, p);

	if (p == MAP_FAILED) {
		FUNC0();
		FUNC3("Error:6: mmap() failed when it shouldn't have\n");
		return 1;
	}

	addr = BASE_ADDRESS;
	size = 5 * page_size;
	if (FUNC2((void *)addr, size) != 0) {
		FUNC0();
		FUNC3("Error: munmap failed!?\n");
		return 1;
	}
	FUNC3("unmap() successful\n");

	FUNC3("OK\n");
	return 0;
}