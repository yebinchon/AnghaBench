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
struct TYPE_6__ {scalar_t__ status; int cursorOptions; scalar_t__ createSubid; int /*<<< orphan*/ * resowner; int /*<<< orphan*/ * holdSnapshot; int /*<<< orphan*/  autoHeld; scalar_t__ portalPinned; } ;
struct TYPE_5__ {TYPE_2__* portal; } ;
typedef  TYPE_1__ PortalHashEnt ;
typedef  TYPE_2__* Portal ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 int CURSOR_OPT_HOLD ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ InvalidSubTransactionId ; 
 scalar_t__ PORTAL_ACTIVE ; 
 scalar_t__ PORTAL_READY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  PortalHashTable ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

bool
FUNC10(bool isPrepare)
{
	bool		result = false;
	HASH_SEQ_STATUS status;
	PortalHashEnt *hentry;

	FUNC7(&status, PortalHashTable);

	while ((hentry = (PortalHashEnt *) FUNC8(&status)) != NULL)
	{
		Portal		portal = hentry->portal;

		/*
		 * There should be no pinned portals anymore. Complain if someone
		 * leaked one. Auto-held portals are allowed; we assume that whoever
		 * pinned them is managing them.
		 */
		if (portal->portalPinned && !portal->autoHeld)
			FUNC3(ERROR, "cannot commit while a portal is pinned");

		/*
		 * Do not touch active portals --- this can only happen in the case of
		 * a multi-transaction utility command, such as VACUUM, or a commit in
		 * a procedure.
		 *
		 * Note however that any resource owner attached to such a portal is
		 * still going to go away, so don't leave a dangling pointer.  Also
		 * unregister any snapshots held by the portal, mainly to avoid
		 * snapshot leak warnings from ResourceOwnerRelease().
		 */
		if (portal->status == PORTAL_ACTIVE)
		{
			if (portal->holdSnapshot)
			{
				if (portal->resowner)
					FUNC2(portal->holdSnapshot,
												portal->resowner);
				portal->holdSnapshot = NULL;
			}
			portal->resowner = NULL;
			continue;
		}

		/* Is it a holdable portal created in the current xact? */
		if ((portal->cursorOptions & CURSOR_OPT_HOLD) &&
			portal->createSubid != InvalidSubTransactionId &&
			portal->status == PORTAL_READY)
		{
			/*
			 * We are exiting the transaction that created a holdable cursor.
			 * Instead of dropping the portal, prepare it for access by later
			 * transactions.
			 *
			 * However, if this is PREPARE TRANSACTION rather than COMMIT,
			 * refuse PREPARE, because the semantics seem pretty unclear.
			 */
			if (isPrepare)
				FUNC4(ERROR,
						(FUNC5(ERRCODE_FEATURE_NOT_SUPPORTED),
						 FUNC6("cannot PREPARE a transaction that has created a cursor WITH HOLD")));

			FUNC0(portal);

			/* Report we changed state */
			result = true;
		}
		else if (portal->createSubid == InvalidSubTransactionId)
		{
			/*
			 * Do nothing to cursors held over from a previous transaction
			 * (including ones we just froze in a previous cycle of this loop)
			 */
			continue;
		}
		else
		{
			/* Zap all non-holdable portals */
			FUNC1(portal, true);

			/* Report we changed state */
			result = true;
		}

		/*
		 * After either freezing or dropping a portal, we have to restart the
		 * iteration, because we could have invoked user-defined code that
		 * caused a drop of the next portal in the hash chain.
		 */
		FUNC9(&status);
		FUNC7(&status, PortalHashTable);
	}

	return result;
}