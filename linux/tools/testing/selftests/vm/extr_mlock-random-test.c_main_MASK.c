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
 int /*<<< orphan*/  MLOCK_OUTOF_LIMIT_SIZE ; 
 int /*<<< orphan*/  MLOCK_RLIMIT_SIZE ; 
 int /*<<< orphan*/  MLOCK_WITHIN_LIMIT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 

int FUNC7(int argc, char **argv)
{
	char *p = NULL;
	int ret = 0;

	if (FUNC4(MLOCK_RLIMIT_SIZE))
		return -1;

	p = FUNC1(MLOCK_WITHIN_LIMIT_SIZE);
	if (p == NULL) {
		FUNC3("malloc() failure\n");
		return -1;
	}
	ret = FUNC6(p, MLOCK_WITHIN_LIMIT_SIZE);
	if (ret)
		return ret;
	FUNC2(p, MLOCK_WITHIN_LIMIT_SIZE);
	FUNC0(p);


	p = FUNC1(MLOCK_OUTOF_LIMIT_SIZE);
	if (p == NULL) {
		FUNC3("malloc() failure\n");
		return -1;
	}
	ret = FUNC5(p, MLOCK_OUTOF_LIMIT_SIZE);
	if (ret)
		return ret;
	FUNC2(p, MLOCK_OUTOF_LIMIT_SIZE);
	FUNC0(p);

	return 0;
}