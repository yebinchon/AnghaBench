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
typedef  int /*<<< orphan*/  Portal ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_CURSOR_NAME ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_CURSOR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

void
FUNC7(const char *name)
{
	Portal		portal;

	/* NULL means CLOSE ALL */
	if (name == NULL)
	{
		FUNC2();
		return;
	}

	/*
	 * Disallow empty-string cursor name (conflicts with protocol-level
	 * unnamed portal).
	 */
	if (name[0] == '\0')
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_CURSOR_NAME),
				 FUNC6("invalid cursor name: must not be empty")));

	/*
	 * get the portal from the portal name
	 */
	portal = FUNC0(name);
	if (!FUNC3(portal))
	{
		FUNC4(ERROR,
				(FUNC5(ERRCODE_UNDEFINED_CURSOR),
				 FUNC6("cursor \"%s\" does not exist", name)));
		return;					/* keep compiler happy */
	}

	/*
	 * Note: PortalCleanup is called as a side-effect, if not already done.
	 */
	FUNC1(portal, false);
}