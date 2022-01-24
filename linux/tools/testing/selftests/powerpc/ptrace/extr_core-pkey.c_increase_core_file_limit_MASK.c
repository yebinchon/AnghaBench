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
struct rlimit {scalar_t__ rlim_cur; scalar_t__ rlim_max; } ;

/* Variables and functions */
 scalar_t__ CORE_FILE_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RLIMIT_CORE ; 
 int /*<<< orphan*/  RLIMIT_FSIZE ; 
 scalar_t__ RLIM_INFINITY ; 
 int TEST_PASS ; 
 int FUNC1 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct rlimit*) ; 

__attribute__((used)) static int FUNC3(void)
{
	struct rlimit rlim;
	int ret;

	ret = FUNC1(RLIMIT_CORE, &rlim);
	FUNC0(ret);

	if (rlim.rlim_cur != RLIM_INFINITY && rlim.rlim_cur < CORE_FILE_LIMIT) {
		rlim.rlim_cur = CORE_FILE_LIMIT;

		if (rlim.rlim_max != RLIM_INFINITY &&
		    rlim.rlim_max < CORE_FILE_LIMIT)
			rlim.rlim_max = CORE_FILE_LIMIT;

		ret = FUNC2(RLIMIT_CORE, &rlim);
		FUNC0(ret);
	}

	ret = FUNC1(RLIMIT_FSIZE, &rlim);
	FUNC0(ret);

	if (rlim.rlim_cur != RLIM_INFINITY && rlim.rlim_cur < CORE_FILE_LIMIT) {
		rlim.rlim_cur = CORE_FILE_LIMIT;

		if (rlim.rlim_max != RLIM_INFINITY &&
		    rlim.rlim_max < CORE_FILE_LIMIT)
			rlim.rlim_max = CORE_FILE_LIMIT;

		ret = FUNC2(RLIMIT_FSIZE, &rlim);
		FUNC0(ret);
	}

	return TEST_PASS;
}