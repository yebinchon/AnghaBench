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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATEMENT_TIMEOUT ; 
 scalar_t__ StatementTimeout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xact_started ; 

__attribute__((used)) static void
FUNC4(void)
{
	/* must be within an xact */
	FUNC0(xact_started);

	if (StatementTimeout > 0)
	{
		if (!FUNC3(STATEMENT_TIMEOUT))
			FUNC2(STATEMENT_TIMEOUT, StatementTimeout);
	}
	else
	{
		if (FUNC3(STATEMENT_TIMEOUT))
			FUNC1(STATEMENT_TIMEOUT, false);
	}
}