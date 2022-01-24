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
struct TYPE_5__ {scalar_t__ createSubid; int portalPinned; int /*<<< orphan*/ * cleanup; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_2__* portal; } ;
typedef  scalar_t__ SubTransactionId ;
typedef  TYPE_1__ PortalHashEnt ;
typedef  TYPE_2__* Portal ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  PortalHashTable ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(SubTransactionId mySubid)
{
	HASH_SEQ_STATUS status;
	PortalHashEnt *hentry;

	FUNC3(&status, PortalHashTable);

	while ((hentry = (PortalHashEnt *) FUNC4(&status)) != NULL)
	{
		Portal		portal = hentry->portal;

		if (portal->createSubid != mySubid)
			continue;

		/*
		 * If a portal is still pinned, forcibly unpin it. PortalDrop will not
		 * let us drop the portal otherwise. Whoever pinned the portal was
		 * interrupted by the abort too and won't try to use it anymore.
		 */
		if (portal->portalPinned)
			portal->portalPinned = false;

		/*
		 * We had better not call any user-defined code during cleanup, so if
		 * the cleanup hook hasn't been run yet, too bad; we'll just skip it.
		 */
		if (FUNC0(portal->cleanup))
		{
			FUNC2(WARNING, "skipping cleanup for portal \"%s\"", portal->name);
			portal->cleanup = NULL;
		}

		/* Zap it. */
		FUNC1(portal, false);
	}
}