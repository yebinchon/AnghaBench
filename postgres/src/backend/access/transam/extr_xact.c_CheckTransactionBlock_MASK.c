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
 int /*<<< orphan*/  ERRCODE_NO_ACTIVE_SQL_TRANSACTION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static void
FUNC5(bool isTopLevel, bool throwError, const char *stmtType)
{
	/*
	 * xact block already started?
	 */
	if (FUNC1())
		return;

	/*
	 * subtransaction?
	 */
	if (FUNC0())
		return;

	/*
	 * inside a function call?
	 */
	if (!isTopLevel)
		return;

	FUNC2(throwError ? ERROR : WARNING,
			(FUNC3(ERRCODE_NO_ACTIVE_SQL_TRANSACTION),
	/* translator: %s represents an SQL statement name */
			 FUNC4("%s can only be used in transaction blocks",
					stmtType)));
	return;
}