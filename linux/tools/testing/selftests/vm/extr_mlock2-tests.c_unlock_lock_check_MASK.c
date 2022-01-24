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
 char* LOCKED ; 
 int PFN_MASK ; 
 int UNEVICTABLE_BIT ; 
 int FUNC0 (int) ; 
 int FUNC1 (unsigned long) ; 
 unsigned long FUNC2 () ; 
 scalar_t__ FUNC3 (unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5(char *map)
{
	unsigned long page_size = FUNC2();
	uint64_t page1_flags, page2_flags;

	page1_flags = FUNC1((unsigned long)map);
	page2_flags = FUNC1((unsigned long)map + page_size);
	page1_flags = FUNC0(page1_flags & PFN_MASK);
	page2_flags = FUNC0(page2_flags & PFN_MASK);

	if ((page1_flags & UNEVICTABLE_BIT) || (page2_flags & UNEVICTABLE_BIT)) {
		FUNC4("A page is still marked unevictable after unlock\n");
		return 1;
	}

	if (FUNC3((unsigned long)map, LOCKED)) {
		FUNC4("VMA flag %s is present on page 1 after unlock\n", LOCKED);
		return 1;
	}

	if (FUNC3((unsigned long)map + page_size, LOCKED)) {
		FUNC4("VMA flag %s is present on page 2 after unlock\n", LOCKED);
		return 1;
	}

	return 0;
}