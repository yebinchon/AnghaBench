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
struct TYPE_5__ {int portalPinned; scalar_t__ autoHeld; } ;
struct TYPE_4__ {TYPE_2__* portal; } ;
typedef  TYPE_1__ PortalHashEnt ;
typedef  TYPE_2__* Portal ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  PortalHashTable ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(void)
{
	HASH_SEQ_STATUS status;
	PortalHashEnt *hentry;

	FUNC1(&status, PortalHashTable);

	while ((hentry = (PortalHashEnt *) FUNC2(&status)) != NULL)
	{
		Portal		portal = hentry->portal;

		if (portal->autoHeld)
		{
			portal->portalPinned = false;
			FUNC0(portal, false);
		}
	}
}