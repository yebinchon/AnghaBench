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
struct shared_info {unsigned long amr1; unsigned long amr2; unsigned long amr3; unsigned long expected_iamr; unsigned long expected_uamor; unsigned long new_iamr; unsigned long new_uamor; int /*<<< orphan*/  child_sync; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PKEY_DISABLE_EXECUTE ; 
 int /*<<< orphan*/  SPRN_AMR ; 
 int TEST_PASS ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned long,...) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 char* user_read ; 
 char* user_write ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct shared_info *info)
{
	unsigned long reg;
	bool disable_execute = true;
	int pkey1, pkey2, pkey3;
	int ret;

	/* Wait until parent fills out the initial register values. */
	ret = FUNC8(&info->child_sync);
	if (ret)
		return ret;

	/* Get some pkeys so that we can change their bits in the AMR. */
	pkey1 = FUNC6(0, PKEY_DISABLE_EXECUTE);
	if (pkey1 < 0) {
		pkey1 = FUNC6(0, 0);
		FUNC0(pkey1 < 0, &info->child_sync);

		disable_execute = false;
	}

	pkey2 = FUNC6(0, 0);
	FUNC0(pkey2 < 0, &info->child_sync);

	pkey3 = FUNC6(0, 0);
	FUNC0(pkey3 < 0, &info->child_sync);

	info->amr1 |= 3ul << FUNC3(pkey1);
	info->amr2 |= 3ul << FUNC3(pkey2);
	info->amr3 |= info->amr2 | 3ul << FUNC3(pkey3);

	if (disable_execute)
		info->expected_iamr |= 1ul << FUNC3(pkey1);
	else
		info->expected_iamr &= ~(1ul << FUNC3(pkey1));

	info->expected_iamr &= ~(1ul << FUNC3(pkey2) | 1ul << FUNC3(pkey3));

	info->expected_uamor |= 3ul << FUNC3(pkey1) |
				3ul << FUNC3(pkey2);
	info->new_iamr |= 1ul << FUNC3(pkey1) | 1ul << FUNC3(pkey2);
	info->new_uamor |= 3ul << FUNC3(pkey1);

	/*
	 * We won't use pkey3. We just want a plausible but invalid key to test
	 * whether ptrace will let us write to AMR bits we are not supposed to.
	 *
	 * This also tests whether the kernel restores the UAMOR permissions
	 * after a key is freed.
	 */
	FUNC7(pkey3);

	FUNC4("%-30s AMR: %016lx pkey1: %d pkey2: %d pkey3: %d\n",
	       user_write, info->amr1, pkey1, pkey2, pkey3);

	FUNC2(SPRN_AMR, info->amr1);

	/* Wait for parent to read our AMR value and write a new one. */
	ret = FUNC5(&info->child_sync);
	FUNC0(ret, &info->child_sync);

	ret = FUNC8(&info->child_sync);
	if (ret)
		return ret;

	reg = FUNC1(SPRN_AMR);

	FUNC4("%-30s AMR: %016lx\n", user_read, reg);

	FUNC0(reg != info->amr2, &info->child_sync);

	/*
	 * Wait for parent to try to write an invalid AMR value.
	 */
	ret = FUNC5(&info->child_sync);
	FUNC0(ret, &info->child_sync);

	ret = FUNC8(&info->child_sync);
	if (ret)
		return ret;

	reg = FUNC1(SPRN_AMR);

	FUNC4("%-30s AMR: %016lx\n", user_read, reg);

	FUNC0(reg != info->amr2, &info->child_sync);

	/*
	 * Wait for parent to try to write an IAMR and a UAMOR value. We can't
	 * verify them, but we can verify that the AMR didn't change.
	 */
	ret = FUNC5(&info->child_sync);
	FUNC0(ret, &info->child_sync);

	ret = FUNC8(&info->child_sync);
	if (ret)
		return ret;

	reg = FUNC1(SPRN_AMR);

	FUNC4("%-30s AMR: %016lx\n", user_read, reg);

	FUNC0(reg != info->amr2, &info->child_sync);

	/* Now let parent now that we are finished. */

	ret = FUNC5(&info->child_sync);
	FUNC0(ret, &info->child_sync);

	return TEST_PASS;
}