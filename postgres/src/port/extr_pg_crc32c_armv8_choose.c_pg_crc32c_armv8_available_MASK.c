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
typedef  int uint64 ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  illegal_instruction_handler ; 
 int /*<<< orphan*/  illegal_instruction_jump ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC5(void)
{
	uint64		data = 42;
	int			result;

	/*
	 * Be careful not to do anything that might throw an error while we have
	 * the SIGILL handler set to a nonstandard value.
	 */
	FUNC3(SIGILL, illegal_instruction_handler);
	if (FUNC4(illegal_instruction_jump, 1) == 0)
	{
		/* Rather than hard-wiring an expected result, compare to SB8 code */
		result = (FUNC1(0, &data, sizeof(data)) ==
				  FUNC2(0, &data, sizeof(data)));
	}
	else
	{
		/* We got the SIGILL trap */
		result = -1;
	}
	FUNC3(SIGILL, SIG_DFL);

#ifndef FRONTEND
	/* We don't expect this case, so complain loudly */
	if (result == 0)
		FUNC0(ERROR, "crc32 hardware and software results disagree");

	FUNC0(DEBUG1, "using armv8 crc32 hardware = %d", (result > 0));
#endif

	return (result > 0);
}