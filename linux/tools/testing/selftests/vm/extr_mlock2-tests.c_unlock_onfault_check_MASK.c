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
 int UNEVICTABLE_BIT ; 
 int FUNC0 (int) ; 
 int FUNC1 (unsigned long) ; 
 unsigned long FUNC2 () ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(char *map)
{
	unsigned long page_size = FUNC2();
	uint64_t page1_flags;

	page1_flags = FUNC1((unsigned long)map);
	page1_flags = FUNC0(page1_flags & PFN_MASK);

	if (page1_flags & UNEVICTABLE_BIT) {
		FUNC4("Page 1 is still marked unevictable after unlock\n");
		return 1;
	}

	if (FUNC3((unsigned long)map) ||
	    FUNC3((unsigned long)map + page_size)) {
		FUNC4("VMA is still lock on fault after unlock\n");
		return 1;
	}

	return 0;
}