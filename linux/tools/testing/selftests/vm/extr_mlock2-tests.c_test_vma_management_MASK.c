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
struct vm_boundaries {scalar_t__ start; } ;

/* Variables and functions */
 scalar_t__ ENOSYS ; 
 int /*<<< orphan*/  KSFT_SKIP ; 
 int MAP_ANONYMOUS ; 
 void* MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int /*<<< orphan*/  MLOCK_ONFAULT ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (unsigned long,struct vm_boundaries*) ; 
 unsigned long FUNC2 () ; 
 scalar_t__ FUNC3 (void*,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (void*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(bool call_mlock)
{
	int ret = 1;
	void *map;
	unsigned long page_size = FUNC2();
	struct vm_boundaries page1;
	struct vm_boundaries page2;
	struct vm_boundaries page3;

	map = FUNC4(NULL, 3 * page_size, PROT_READ | PROT_WRITE,
		   MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);
	if (map == MAP_FAILED) {
		FUNC7("mmap()");
		return ret;
	}

	if (call_mlock && FUNC3(map, 3 * page_size, MLOCK_ONFAULT)) {
		if (errno == ENOSYS) {
			FUNC8("Cannot call new mlock family, skipping test\n");
			FUNC0(KSFT_SKIP);
		}
		FUNC7("mlock(ONFAULT)\n");
		goto out;
	}

	if (FUNC1((unsigned long)map, &page1) ||
	    FUNC1((unsigned long)map + page_size, &page2) ||
	    FUNC1((unsigned long)map + page_size * 2, &page3)) {
		FUNC8("couldn't find mapping in /proc/self/maps\n");
		goto out;
	}

	/*
	 * Before we unlock a portion, we need to that all three pages are in
	 * the same VMA.  If they are not we abort this test (Note that this is
	 * not a failure)
	 */
	if (page1.start != page2.start || page2.start != page3.start) {
		FUNC8("VMAs are not merged to start, aborting test\n");
		ret = 0;
		goto out;
	}

	if (FUNC5(map + page_size, page_size)) {
		FUNC7("munlock()");
		goto out;
	}

	if (FUNC1((unsigned long)map, &page1) ||
	    FUNC1((unsigned long)map + page_size, &page2) ||
	    FUNC1((unsigned long)map + page_size * 2, &page3)) {
		FUNC8("couldn't find mapping in /proc/self/maps\n");
		goto out;
	}

	/* All three VMAs should be different */
	if (page1.start == page2.start || page2.start == page3.start) {
		FUNC8("failed to split VMA for munlock\n");
		goto out;
	}

	/* Now unlock the first and third page and check the VMAs again */
	if (FUNC5(map, page_size * 3)) {
		FUNC7("munlock()");
		goto out;
	}

	if (FUNC1((unsigned long)map, &page1) ||
	    FUNC1((unsigned long)map + page_size, &page2) ||
	    FUNC1((unsigned long)map + page_size * 2, &page3)) {
		FUNC8("couldn't find mapping in /proc/self/maps\n");
		goto out;
	}

	/* Now all three VMAs should be the same */
	if (page1.start != page2.start || page2.start != page3.start) {
		FUNC8("failed to merge VMAs after munlock\n");
		goto out;
	}

	ret = 0;
out:
	FUNC6(map, 3 * page_size);
	return ret;
}