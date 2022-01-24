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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  InvalidOid ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  IsUnderPostmaster ; 
 int MAXATTR ; 
 int* Nulls ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ ** attrtypes ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(void)
{
	int			i;

	FUNC0(!IsUnderPostmaster);
	FUNC0(FUNC4());

	/*
	 * To ensure that src/common/link-canary.c is linked into the backend, we
	 * must call it from somewhere.  Here is as good as anywhere.
	 */
	if (FUNC10())
		FUNC9(ERROR, "backend is incorrectly linked to frontend functions");

	/*
	 * Do backend-like initialization for bootstrap mode
	 */
	FUNC3();

	FUNC2(NULL, InvalidOid, NULL, InvalidOid, NULL, false);

	/* Initialize stuff for bootstrap-file processing */
	for (i = 0; i < MAXATTR; i++)
	{
		attrtypes[i] = NULL;
		Nulls[i] = false;
	}

	/*
	 * Process bootstrap input.
	 */
	FUNC6();
	FUNC7();
	FUNC1();

	/*
	 * We should now know about all mapped relations, so it's okay to write
	 * out the initial relation mapping files.
	 */
	FUNC5();

	/* Clean up and exit */
	FUNC8();
	FUNC11(0);
}