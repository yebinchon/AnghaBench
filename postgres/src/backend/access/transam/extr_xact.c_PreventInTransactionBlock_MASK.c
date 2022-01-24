#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ blockState; } ;

/* Variables and functions */
 TYPE_1__* CurrentTransactionState ; 
 int /*<<< orphan*/  ERRCODE_ACTIVE_SQL_TRANSACTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FATAL ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ TBLOCK_DEFAULT ; 
 scalar_t__ TBLOCK_STARTED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

void
FUNC6(bool isTopLevel, const char *stmtType)
{
	/*
	 * xact block already started?
	 */
	if (FUNC1())
		FUNC3(ERROR,
				(FUNC4(ERRCODE_ACTIVE_SQL_TRANSACTION),
		/* translator: %s represents an SQL statement name */
				 FUNC5("%s cannot run inside a transaction block",
						stmtType)));

	/*
	 * subtransaction?
	 */
	if (FUNC0())
		FUNC3(ERROR,
				(FUNC4(ERRCODE_ACTIVE_SQL_TRANSACTION),
		/* translator: %s represents an SQL statement name */
				 FUNC5("%s cannot run inside a subtransaction",
						stmtType)));

	/*
	 * inside a function call?
	 */
	if (!isTopLevel)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_ACTIVE_SQL_TRANSACTION),
		/* translator: %s represents an SQL statement name */
				 FUNC5("%s cannot be executed from a function", stmtType)));

	/* If we got past IsTransactionBlock test, should be in default state */
	if (CurrentTransactionState->blockState != TBLOCK_DEFAULT &&
		CurrentTransactionState->blockState != TBLOCK_STARTED)
		FUNC2(FATAL, "cannot prevent transaction chain");
	/* all okay */
}