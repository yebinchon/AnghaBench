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
 int PFN_MASK ; 
 int PRESENT_BIT ; 
 int UNEVICTABLE_BIT ; 
 int FUNC0 (int) ; 
 int FUNC1 (unsigned long) ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(char *map)
{
	unsigned long page_size = FUNC2();
	uint64_t page1_flags, page2_flags;

	page1_flags = FUNC1((unsigned long)map);
	page2_flags = FUNC1((unsigned long)map + page_size);

	/* Neither page should be present */
	if ((page1_flags & PRESENT_BIT) || (page2_flags & PRESENT_BIT)) {
		FUNC4("Pages were made present by MLOCK_ONFAULT\n");
		return 1;
	}

	*map = 'a';
	page1_flags = FUNC1((unsigned long)map);
	page2_flags = FUNC1((unsigned long)map + page_size);

	/* Only page 1 should be present */
	if ((page1_flags & PRESENT_BIT) == 0) {
		FUNC4("Page 1 is not present after fault\n");
		return 1;
	} else if (page2_flags & PRESENT_BIT) {
		FUNC4("Page 2 was made present\n");
		return 1;
	}

	page1_flags = FUNC0(page1_flags & PFN_MASK);

	/* Page 1 should be unevictable */
	if ((page1_flags & UNEVICTABLE_BIT) == 0) {
		FUNC4("Failed to make faulted page unevictable\n");
		return 1;
	}

	if (!FUNC3((unsigned long)map)) {
		FUNC4("VMA is not marked for lock on fault\n");
		return 1;
	}

	if (!FUNC3((unsigned long)map + page_size)) {
		FUNC4("VMA is not marked for lock on fault\n");
		return 1;
	}

	return 0;
}