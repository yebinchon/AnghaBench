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
 scalar_t__ ENOSYS ; 
 int /*<<< orphan*/  KSFT_SKIP ; 
 int MAP_ANONYMOUS ; 
 char* MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int /*<<< orphan*/  MLOCK_ONFAULT ; 
 int PFN_MASK ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int UNEVICTABLE_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC1 (int) ; 
 int FUNC2 (unsigned long) ; 
 unsigned long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10()
{
	char *map;
	int ret = 1;
	unsigned long page_size = FUNC3();
	uint64_t page1_flags, page2_flags;

	map = FUNC6(NULL, 2 * page_size, PROT_READ | PROT_WRITE,
		   MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);
	if (map == MAP_FAILED) {
		FUNC8("test_mlock_locked mmap");
		goto out;
	}

	*map = 'a';

	if (FUNC5(map, 2 * page_size, MLOCK_ONFAULT)) {
		if (errno == ENOSYS) {
			FUNC9("Cannot call new mlock family, skipping test\n");
			FUNC0(KSFT_SKIP);
		}
		FUNC8("mlock2(MLOCK_ONFAULT)");
		goto unmap;
	}

	page1_flags = FUNC2((unsigned long)map);
	page2_flags = FUNC2((unsigned long)map + page_size);
	page1_flags = FUNC1(page1_flags & PFN_MASK);
	page2_flags = FUNC1(page2_flags & PFN_MASK);

	/* Page 1 should be unevictable */
	if ((page1_flags & UNEVICTABLE_BIT) == 0) {
		FUNC9("Failed to make present page unevictable\n");
		goto unmap;
	}

	if (!FUNC4((unsigned long)map) ||
	    !FUNC4((unsigned long)map + page_size)) {
		FUNC9("VMA with present pages is not marked lock on fault\n");
		goto unmap;
	}
	ret = 0;
unmap:
	FUNC7(map, 2 * page_size);
out:
	return ret;
}