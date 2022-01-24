#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int autoHeld; scalar_t__ strategy; scalar_t__ status; scalar_t__ portalPinned; } ;
struct TYPE_4__ {TYPE_2__* portal; } ;
typedef  TYPE_1__ PortalHashEnt ;
typedef  TYPE_2__* Portal ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_TRANSACTION_TERMINATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ PORTAL_ONE_SELECT ; 
 scalar_t__ PORTAL_READY ; 
 int /*<<< orphan*/  PortalHashTable ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(void)
{
	HASH_SEQ_STATUS status;
	PortalHashEnt *hentry;

	FUNC5(&status, PortalHashTable);

	while ((hentry = (PortalHashEnt *) FUNC6(&status)) != NULL)
	{
		Portal		portal = hentry->portal;

		if (portal->portalPinned && !portal->autoHeld)
		{
			/*
			 * Doing transaction control, especially abort, inside a cursor
			 * loop that is not read-only, for example using UPDATE ...
			 * RETURNING, has weird semantics issues.  Also, this
			 * implementation wouldn't work, because such portals cannot be
			 * held.  (The core grammar enforces that only SELECT statements
			 * can drive a cursor, but for example PL/pgSQL does not restrict
			 * it.)
			 */
			if (portal->strategy != PORTAL_ONE_SELECT)
				FUNC2(ERROR,
						(FUNC3(ERRCODE_INVALID_TRANSACTION_TERMINATION),
						 FUNC4("cannot perform transaction commands inside a cursor loop that is not read-only")));

			/* Verify it's in a suitable state to be held */
			if (portal->status != PORTAL_READY)
				FUNC1(ERROR, "pinned portal is not ready to be auto-held");

			FUNC0(portal);
			portal->autoHeld = true;
		}
	}
}