#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ createSubid; scalar_t__ activeSubid; scalar_t__ status; int /*<<< orphan*/  portalContext; int /*<<< orphan*/ * resowner; int /*<<< orphan*/  (* cleanup ) (TYPE_2__*) ;} ;
struct TYPE_7__ {TYPE_2__* portal; } ;
typedef  scalar_t__ SubTransactionId ;
typedef  int /*<<< orphan*/  ResourceOwner ;
typedef  TYPE_1__ PortalHashEnt ;
typedef  TYPE_2__* Portal ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PORTAL_ACTIVE ; 
 scalar_t__ PORTAL_FAILED ; 
 scalar_t__ PORTAL_READY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  (*) (TYPE_2__*)) ; 
 int /*<<< orphan*/  PortalHashTable ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

void
FUNC8(SubTransactionId mySubid,
				   SubTransactionId parentSubid,
				   ResourceOwner myXactOwner,
				   ResourceOwner parentXactOwner)
{
	HASH_SEQ_STATUS status;
	PortalHashEnt *hentry;

	FUNC5(&status, PortalHashTable);

	while ((hentry = (PortalHashEnt *) FUNC6(&status)) != NULL)
	{
		Portal		portal = hentry->portal;

		/* Was it created in this subtransaction? */
		if (portal->createSubid != mySubid)
		{
			/* No, but maybe it was used in this subtransaction? */
			if (portal->activeSubid == mySubid)
			{
				/* Maintain activeSubid until the portal is removed */
				portal->activeSubid = parentSubid;

				/*
				 * A MarkPortalActive() caller ran an upper-level portal in
				 * this subtransaction and left the portal ACTIVE.  This can't
				 * happen, but force the portal into FAILED state for the same
				 * reasons discussed below.
				 *
				 * We assume we can get away without forcing upper-level READY
				 * portals to fail, even if they were run and then suspended.
				 * In theory a suspended upper-level portal could have
				 * acquired some references to objects that are about to be
				 * destroyed, but there should be sufficient defenses against
				 * such cases: the portal's original query cannot contain such
				 * references, and any references within, say, cached plans of
				 * PL/pgSQL functions are not from active queries and should
				 * be protected by revalidation logic.
				 */
				if (portal->status == PORTAL_ACTIVE)
					FUNC0(portal);

				/*
				 * Also, if we failed it during the current subtransaction
				 * (either just above, or earlier), reattach its resource
				 * owner to the current subtransaction's resource owner, so
				 * that any resources it still holds will be released while
				 * cleaning up this subtransaction.  This prevents some corner
				 * cases wherein we might get Asserts or worse while cleaning
				 * up objects created during the current subtransaction
				 * (because they're still referenced within this portal).
				 */
				if (portal->status == PORTAL_FAILED && portal->resowner)
				{
					FUNC4(portal->resowner, myXactOwner);
					portal->resowner = NULL;
				}
			}
			/* Done if it wasn't created in this subtransaction */
			continue;
		}

		/*
		 * Force any live portals of my own subtransaction into FAILED state.
		 * We have to do this because they might refer to objects created or
		 * changed in the failed subtransaction, leading to crashes within
		 * ExecutorEnd when portalcmds.c tries to close down the portal.
		 * Currently, every MarkPortalActive() caller ensures it updates the
		 * portal status again before relinquishing control, so ACTIVE can't
		 * happen here.  If it does happen, dispose the portal like existing
		 * MarkPortalActive() callers would.
		 */
		if (portal->status == PORTAL_READY ||
			portal->status == PORTAL_ACTIVE)
			FUNC0(portal);

		/*
		 * Allow portalcmds.c to clean up the state it knows about, if we
		 * haven't already.
		 */
		if (FUNC2(portal->cleanup))
		{
			portal->cleanup(portal);
			portal->cleanup = NULL;
		}

		/* drop cached plan reference, if any */
		FUNC3(portal);

		/*
		 * Any resources belonging to the portal will be released in the
		 * upcoming transaction-wide cleanup; they will be gone before we run
		 * PortalDrop.
		 */
		portal->resowner = NULL;

		/*
		 * Although we can't delete the portal data structure proper, we can
		 * release any memory in subsidiary contexts, such as executor state.
		 * The cleanup hook was the last thing that might have needed data
		 * there.
		 */
		FUNC1(portal->portalContext);
	}
}