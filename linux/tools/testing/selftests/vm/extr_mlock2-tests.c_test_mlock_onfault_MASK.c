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
 scalar_t__ ENOSYS ; 
 int /*<<< orphan*/  KSFT_SKIP ; 
 int MAP_ANONYMOUS ; 
 char* MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int /*<<< orphan*/  MLOCK_ONFAULT ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 unsigned long FUNC1 () ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10()
{
	char *map;
	int ret = 1;
	unsigned long page_size = FUNC1();

	map = FUNC3(NULL, 2 * page_size, PROT_READ | PROT_WRITE,
		   MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);
	if (map == MAP_FAILED) {
		FUNC7("test_mlock_locked mmap");
		goto out;
	}

	if (FUNC2(map, 2 * page_size, MLOCK_ONFAULT)) {
		if (errno == ENOSYS) {
			FUNC8("Cannot call new mlock family, skipping test\n");
			FUNC0(KSFT_SKIP);
		}
		FUNC7("mlock2(MLOCK_ONFAULT)");
		goto unmap;
	}

	if (FUNC6(map))
		goto unmap;

	/* Now unlock and recheck attributes */
	if (FUNC4(map, 2 * page_size)) {
		if (errno == ENOSYS) {
			FUNC8("Cannot call new mlock family, skipping test\n");
			FUNC0(KSFT_SKIP);
		}
		FUNC7("munlock()");
		goto unmap;
	}

	ret = FUNC9(map);
unmap:
	FUNC5(map, 2 * page_size);
out:
	return ret;
}