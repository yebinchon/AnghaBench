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
 int /*<<< orphan*/  ADDR ; 
 int FLAGS ; 
 size_t LENGTH ; 
 void* MAP_FAILED ; 
 int MAP_HUGE_MASK ; 
 int MAP_HUGE_SHIFT ; 
 int /*<<< orphan*/  PROTECTION ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 

int FUNC10(int argc, char **argv)
{
	void *addr;
	int ret;
	size_t length = LENGTH;
	int flags = FLAGS;
	int shift = 0;

	if (argc > 1)
		length = FUNC1(argv[1]) << 20;
	if (argc > 2) {
		shift = FUNC0(argv[2]);
		if (shift)
			flags |= (shift & MAP_HUGE_MASK) << MAP_HUGE_SHIFT;
	}

	if (shift)
		FUNC7("%u kB hugepages\n", 1 << shift);
	else
		FUNC7("Default size hugepages\n");
	FUNC7("Mapping %lu Mbytes\n", (unsigned long)length >> 20);

	addr = FUNC4(ADDR, length, PROTECTION, flags, -1, 0);
	if (addr == MAP_FAILED) {
		FUNC6("mmap");
		FUNC3(1);
	}

	FUNC7("Returned address is %p\n", addr);
	FUNC2(addr);
	FUNC9(addr);
	ret = FUNC8(addr);

	/* munmap() length of MAP_HUGETLB memory must be hugepage aligned */
	if (FUNC5(addr, LENGTH)) {
		FUNC6("munmap");
		FUNC3(1);
	}

	return ret;
}