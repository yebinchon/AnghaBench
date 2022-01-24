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
 int MAP_HUGETLB ; 
 int MAP_HUGE_SHIFT ; 
 int SHM_HUGETLB ; 
 int SHM_HUGE_SHIFT ; 
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned int FUNC2 () ; 
 int FUNC3 (unsigned long) ; 
 int num_page_sizes ; 
 unsigned long* page_sizes ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int) ; 

int FUNC9(void)
{
	int i;
	unsigned default_hps = FUNC0();

	FUNC1();

	FUNC6();

	for (i = 0; i < num_page_sizes; i++) {
		unsigned long ps = page_sizes[i];
		int arg = FUNC3(ps) << MAP_HUGE_SHIFT;
		FUNC4("Testing %luMB mmap with shift %x\n", ps >> 20, arg);
		FUNC7(ps, MAP_HUGETLB | arg);
	}
	FUNC4("Testing default huge mmap\n");
	FUNC7(default_hps, SHM_HUGETLB);

	FUNC5("Testing non-huge shmget");
	FUNC8(FUNC2(), 0);

	for (i = 0; i < num_page_sizes; i++) {
		unsigned long ps = page_sizes[i];
		int arg = FUNC3(ps) << SHM_HUGE_SHIFT;
		FUNC4("Testing %luMB shmget with shift %x\n", ps >> 20, arg);
		FUNC8(ps, SHM_HUGETLB | arg);
	}
	FUNC5("default huge shmget");
	FUNC8(default_hps, SHM_HUGETLB);

	return 0;
}