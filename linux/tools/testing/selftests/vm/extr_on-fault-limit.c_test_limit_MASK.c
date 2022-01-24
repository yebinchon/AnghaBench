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
struct rlimit {int rlim_max; } ;

/* Variables and functions */
 int MAP_ANONYMOUS ; 
 void* MAP_FAILED ; 
 int MAP_POPULATE ; 
 int MAP_PRIVATE ; 
 int MCL_FUTURE ; 
 int MCL_ONFAULT ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct rlimit*) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(void)
{
	int ret = 1;
	struct rlimit lims;
	void *map;

	if (FUNC0(RLIMIT_MEMLOCK, &lims)) {
		FUNC5("getrlimit");
		return ret;
	}

	if (FUNC1(MCL_ONFAULT | MCL_FUTURE)) {
		FUNC5("mlockall");
		return ret;
	}

	map = FUNC2(NULL, 2 * lims.rlim_max, PROT_READ | PROT_WRITE,
		   MAP_PRIVATE | MAP_ANONYMOUS | MAP_POPULATE, -1, 0);
	if (map != MAP_FAILED)
		FUNC6("mmap should have failed, but didn't\n");
	else {
		ret = 0;
		FUNC4(map, 2 * lims.rlim_max);
	}

	FUNC3();
	return ret;
}