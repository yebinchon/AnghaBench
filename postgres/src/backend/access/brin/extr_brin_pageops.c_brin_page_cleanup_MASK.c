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
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ShareLock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC11(Relation idxrel, Buffer buf)
{
	Page		page = FUNC3(buf);

	/*
	 * If a page was left uninitialized, initialize it now; also record it in
	 * FSM.
	 *
	 * Somebody else might be extending the relation concurrently.  To avoid
	 * re-initializing the page before they can grab the buffer lock, we
	 * acquire the extension lock momentarily.  Since they hold the extension
	 * lock from before getting the page and after its been initialized, we're
	 * sure to see their initialization.
	 */
	if (FUNC6(page))
	{
		FUNC5(idxrel, ShareLock);
		FUNC8(idxrel, ShareLock);

		FUNC4(buf, BUFFER_LOCK_EXCLUSIVE);
		if (FUNC6(page))
		{
			FUNC10(idxrel, buf);
			FUNC4(buf, BUFFER_LOCK_UNLOCK);
			return;
		}
		FUNC4(buf, BUFFER_LOCK_UNLOCK);
	}

	/* Nothing to be done for non-regular index pages */
	if (FUNC0(FUNC3(buf)) ||
		FUNC1(FUNC3(buf)))
		return;

	/* Measure free space and record it */
	FUNC7(idxrel, FUNC2(buf),
							FUNC9(page));
}