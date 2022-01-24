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
 int /*<<< orphan*/  __NR_subpage_prot ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (void*,long,long,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int errors ; 
 int /*<<< orphan*/  FUNC4 (unsigned int*) ; 
 int in_test ; 
 unsigned int* FUNC5 (long) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 long FUNC8 (int /*<<< orphan*/ ,void*,unsigned long,unsigned int*) ; 

__attribute__((used)) static int FUNC9(void *addr, unsigned long size)
{
	unsigned int *map;
	long i, j, pages, err;

	pages = size / 0x10000;
	map = FUNC5(pages * 4);
	FUNC0(map);

	/*
	 * for each page, mark subpage i % 16 read only and subpage
	 * (i + 3) % 16 inaccessible
	 */
	for (i = 0; i < pages; i++) {
		map[i] = (0x40000000 >> (((i + 1) * 2) % 32)) |
			(0xc0000000 >> (((i + 3) * 2) % 32));
	}

	err = FUNC8(__NR_subpage_prot, addr, size, map);
	if (err) {
		FUNC6("subpage_perm");
		return 1;
	}
	FUNC4(map);

	in_test = 1;
	errors = 0;
	for (i = 0; i < pages; i++) {
		for (j = 0; j < 16; j++, addr += 0x1000) {
			FUNC2(addr);
			FUNC1(addr, i, j, 0);
			FUNC3(addr);
			FUNC1(addr, i, j, 1);
		}
	}

	in_test = 0;
	if (errors) {
		FUNC7("%d errors detected\n", errors);
		return 1;
	}

	return 0;
}