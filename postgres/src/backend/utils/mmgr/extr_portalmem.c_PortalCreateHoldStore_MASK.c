#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cursorOptions; int /*<<< orphan*/ * holdStore; int /*<<< orphan*/ * holdContext; int /*<<< orphan*/ * holdSnapshot; } ;
typedef  TYPE_1__* Portal ;
typedef  int /*<<< orphan*/ * MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int CURSOR_OPT_SCROLL ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TopPortalContext ; 
 int /*<<< orphan*/ * FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  work_mem ; 

void
FUNC4(Portal portal)
{
	MemoryContext oldcxt;

	FUNC1(portal->holdContext == NULL);
	FUNC1(portal->holdStore == NULL);
	FUNC1(portal->holdSnapshot == NULL);

	/*
	 * Create the memory context that is used for storage of the tuple set.
	 * Note this is NOT a child of the portal's portalContext.
	 */
	portal->holdContext =
		FUNC0(TopPortalContext,
							  "PortalHoldContext",
							  ALLOCSET_DEFAULT_SIZES);

	/*
	 * Create the tuple store, selecting cross-transaction temp files, and
	 * enabling random access only if cursor requires scrolling.
	 *
	 * XXX: Should maintenance_work_mem be used for the portal size?
	 */
	oldcxt = FUNC2(portal->holdContext);

	portal->holdStore =
		FUNC3(portal->cursorOptions & CURSOR_OPT_SCROLL,
							  true, work_mem);

	FUNC2(oldcxt);
}