#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ status; } ;
struct TYPE_5__ {TYPE_2__* portal; } ;
typedef  TYPE_1__ PortalHashEnt ;
typedef  TYPE_2__* Portal ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 scalar_t__ PORTAL_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * PortalHashTable ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(void)
{
	HASH_SEQ_STATUS status;
	PortalHashEnt *hentry;

	if (PortalHashTable == NULL)
		return;

	FUNC1(&status, PortalHashTable);
	while ((hentry = FUNC2(&status)) != NULL)
	{
		Portal		portal = hentry->portal;

		/* Can't close the active portal (the one running the command) */
		if (portal->status == PORTAL_ACTIVE)
			continue;

		FUNC0(portal, false);

		/* Restart the iteration in case that led to other drops */
		FUNC3(&status);
		FUNC1(&status, PortalHashTable);
	}
}