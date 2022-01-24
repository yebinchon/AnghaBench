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
 int /*<<< orphan*/  ERRCODE_EXTERNAL_ROUTINE_INVOCATION_EXCEPTION ; 
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int PXE_NO_RANDOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void
FUNC4(int err)
{
	if (err == PXE_NO_RANDOM)
	{
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INTERNAL_ERROR),
				 FUNC2("could not generate a random number")));
	}
	else
	{
		/* For other errors, use the message from the above list. */
		FUNC0(ERROR,
				(FUNC1(ERRCODE_EXTERNAL_ROUTINE_INVOCATION_EXCEPTION),
				 FUNC2("%s", FUNC3(err))));
	}
}