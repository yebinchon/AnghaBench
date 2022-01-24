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
 int MAP_ANONYMOUS ; 
 char* MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int MCL_CURRENT ; 
 int MCL_FUTURE ; 
 int MCL_ONFAULT ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 unsigned long FUNC0 () ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10()
{
	char *map;
	int ret = 1;
	unsigned long page_size = FUNC0();

	map = FUNC3(NULL, 2 * page_size, PROT_READ | PROT_WRITE,
		   MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);

	if (map == MAP_FAILED) {
		FUNC7("test_munlockall mmap");
		goto out;
	}

	if (FUNC2(MCL_CURRENT)) {
		FUNC7("mlockall(MCL_CURRENT)");
		goto out;
	}

	if (FUNC1(map))
		goto unmap;

	if (FUNC4()) {
		FUNC7("munlockall()");
		goto unmap;
	}

	if (FUNC8(map))
		goto unmap;

	FUNC5(map, 2 * page_size);

	map = FUNC3(NULL, 2 * page_size, PROT_READ | PROT_WRITE,
		   MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);

	if (map == MAP_FAILED) {
		FUNC7("test_munlockall second mmap");
		goto out;
	}

	if (FUNC2(MCL_CURRENT | MCL_ONFAULT)) {
		FUNC7("mlockall(MCL_CURRENT | MCL_ONFAULT)");
		goto unmap;
	}

	if (FUNC6(map))
		goto unmap;

	if (FUNC4()) {
		FUNC7("munlockall()");
		goto unmap;
	}

	if (FUNC9(map))
		goto unmap;

	if (FUNC2(MCL_CURRENT | MCL_FUTURE)) {
		FUNC7("mlockall(MCL_CURRENT | MCL_FUTURE)");
		goto out;
	}

	if (FUNC1(map))
		goto unmap;

	if (FUNC4()) {
		FUNC7("munlockall()");
		goto unmap;
	}

	ret = FUNC8(map);

unmap:
	FUNC5(map, 2 * page_size);
out:
	FUNC4();
	return ret;
}