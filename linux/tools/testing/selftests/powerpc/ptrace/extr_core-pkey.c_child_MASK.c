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
struct shared_info {unsigned long amr; unsigned long iamr; unsigned long uamor; int /*<<< orphan*/  core_time; int /*<<< orphan*/  child_sync; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PKEY_DISABLE_EXECUTE ; 
 int /*<<< orphan*/  SPRN_AMR ; 
 int TEST_FAIL ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned long,int,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* user_write ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct shared_info *info)
{
	bool disable_execute = true;
	int pkey1, pkey2, pkey3;
	int *ptr, ret;

	/* Wait until parent fills out the initial register values. */
	ret = FUNC8(&info->child_sync);
	if (ret)
		return ret;

	ret = FUNC1();
	FUNC0(ret);

	/* Get some pkeys so that we can change their bits in the AMR. */
	pkey1 = FUNC5(0, PKEY_DISABLE_EXECUTE);
	if (pkey1 < 0) {
		pkey1 = FUNC5(0, 0);
		FUNC0(pkey1 < 0);

		disable_execute = false;
	}

	pkey2 = FUNC5(0, 0);
	FUNC0(pkey2 < 0);

	pkey3 = FUNC5(0, 0);
	FUNC0(pkey3 < 0);

	info->amr |= 3ul << FUNC3(pkey1) | 2ul << FUNC3(pkey2);

	if (disable_execute)
		info->iamr |= 1ul << FUNC3(pkey1);
	else
		info->iamr &= ~(1ul << FUNC3(pkey1));

	info->iamr &= ~(1ul << FUNC3(pkey2) | 1ul << FUNC3(pkey3));

	info->uamor |= 3ul << FUNC3(pkey1) | 3ul << FUNC3(pkey2);

	FUNC4("%-30s AMR: %016lx pkey1: %d pkey2: %d pkey3: %d\n",
	       user_write, info->amr, pkey1, pkey2, pkey3);

	FUNC2(SPRN_AMR, info->amr);

	/*
	 * We won't use pkey3. This tests whether the kernel restores the UAMOR
	 * permissions after a key is freed.
	 */
	FUNC6(pkey3);

	info->core_time = FUNC7(NULL);

	/* Crash. */
	ptr = 0;
	*ptr = 1;

	/* Shouldn't get here. */
	FUNC0(true);

	return TEST_FAIL;
}