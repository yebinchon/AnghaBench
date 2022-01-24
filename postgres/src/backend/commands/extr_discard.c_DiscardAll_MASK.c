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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  USER_LOCKMETHOD ; 

__attribute__((used)) static void
FUNC10(bool isTopLevel)
{
	/*
	 * Disallow DISCARD ALL in a transaction block. This is arguably
	 * inconsistent (we don't make a similar check in the command sequence
	 * that DISCARD ALL is equivalent to), but the idea is to catch mistakes:
	 * DISCARD ALL inside a transaction block would leave the transaction
	 * still uncommitted.
	 */
	FUNC4(isTopLevel, "DISCARD ALL");

	/* Closing portals might run user-defined code, so do that first. */
	FUNC3();
	FUNC9("session_authorization", NIL, false);
	FUNC5();
	FUNC1();
	FUNC0();
	FUNC2(USER_LOCKMETHOD, true);
	FUNC6();
	FUNC8();
	FUNC7();
}