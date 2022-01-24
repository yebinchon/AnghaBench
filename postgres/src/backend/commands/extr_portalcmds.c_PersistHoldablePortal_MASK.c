#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  (* rDestroy ) (TYPE_3__*) ;} ;
struct TYPE_16__ {scalar_t__ createSubid; int portalPos; int /*<<< orphan*/ * portalContext; int /*<<< orphan*/  status; int /*<<< orphan*/ * holdStore; scalar_t__ atEnd; int /*<<< orphan*/ * holdContext; TYPE_1__* queryDesc; scalar_t__ resowner; int /*<<< orphan*/  tupDesc; int /*<<< orphan*/ * holdSnapshot; } ;
struct TYPE_15__ {TYPE_3__* dest; int /*<<< orphan*/  snapshot; } ;
typedef  scalar_t__ ResourceOwner ;
typedef  TYPE_1__ QueryDesc ;
typedef  TYPE_2__* Portal ;
typedef  int /*<<< orphan*/ * MemoryContext ;

/* Variables and functions */
 TYPE_2__* ActivePortal ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ CurrentResourceOwner ; 
 int /*<<< orphan*/  DestTuplestore ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,long,int) ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ InvalidSubTransactionId ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  PORTAL_READY ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/ * PortalContext ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,int,int) ; 

void
FUNC23(Portal portal)
{
	QueryDesc  *queryDesc = portal->queryDesc;
	Portal		saveActivePortal;
	ResourceOwner saveResourceOwner;
	MemoryContext savePortalContext;
	MemoryContext oldcxt;

	/*
	 * If we're preserving a holdable portal, we had better be inside the
	 * transaction that originally created it.
	 */
	FUNC0(portal->createSubid != InvalidSubTransactionId);
	FUNC0(queryDesc != NULL);

	/*
	 * Caller must have created the tuplestore already ... but not a snapshot.
	 */
	FUNC0(portal->holdContext != NULL);
	FUNC0(portal->holdStore != NULL);
	FUNC0(portal->holdSnapshot == NULL);

	/*
	 * Before closing down the executor, we must copy the tupdesc into
	 * long-term memory, since it was created in executor memory.
	 */
	oldcxt = FUNC11(portal->holdContext);

	portal->tupDesc = FUNC2(portal->tupDesc);

	FUNC11(oldcxt);

	/*
	 * Check for improper portal use, and mark portal active.
	 */
	FUNC8(portal);

	/*
	 * Set up global portal context pointers.
	 */
	saveActivePortal = ActivePortal;
	saveResourceOwner = CurrentResourceOwner;
	savePortalContext = PortalContext;
	FUNC15();
	{
		ActivePortal = portal;
		if (portal->resowner)
			CurrentResourceOwner = portal->resowner;
		PortalContext = portal->portalContext;

		FUNC11(PortalContext);

		FUNC17(queryDesc->snapshot);

		/*
		 * Rewind the executor: we need to store the entire result set in the
		 * tuplestore, so that subsequent backward FETCHs can be processed.
		 */
		FUNC5(queryDesc);

		/*
		 * Change the destination to output to the tuplestore.  Note we tell
		 * the tuplestore receiver to detoast all data passed through it; this
		 * makes it safe to not keep a snapshot associated with the data.
		 */
		queryDesc->dest = FUNC1(DestTuplestore);
		FUNC18(queryDesc->dest,
										portal->holdStore,
										portal->holdContext,
										true);

		/* Fetch the result set into the tuplestore */
		FUNC6(queryDesc, ForwardScanDirection, 0L, false);

		queryDesc->dest->rDestroy(queryDesc->dest);
		queryDesc->dest = NULL;

		/*
		 * Now shut down the inner executor.
		 */
		portal->queryDesc = NULL;	/* prevent double shutdown */
		FUNC4(queryDesc);
		FUNC3(queryDesc);
		FUNC7(queryDesc);

		/*
		 * Set the position in the result set.
		 */
		FUNC11(portal->holdContext);

		if (portal->atEnd)
		{
			/*
			 * Just force the tuplestore forward to its end.  The size of the
			 * skip request here is arbitrary.
			 */
			while (FUNC22(portal->holdStore, 1000000, true))
				 /* continue */ ;
		}
		else
		{
			FUNC21(portal->holdStore);

			if (!FUNC22(portal->holdStore,
									   portal->portalPos,
									   true))
				FUNC19(ERROR, "unexpected end of tuple stream");
		}
	}
	FUNC12();
	{
		/* Uncaught error while executing portal: mark it dead */
		FUNC9(portal);

		/* Restore global vars and propagate error */
		ActivePortal = saveActivePortal;
		CurrentResourceOwner = saveResourceOwner;
		PortalContext = savePortalContext;

		FUNC14();
	}
	FUNC13();

	FUNC11(oldcxt);

	/* Mark portal not active */
	portal->status = PORTAL_READY;

	ActivePortal = saveActivePortal;
	CurrentResourceOwner = saveResourceOwner;
	PortalContext = savePortalContext;

	FUNC16();

	/*
	 * We can now release any subsidiary memory of the portal's context; we'll
	 * never use it again.  The executor already dropped its context, but this
	 * will clean up anything that glommed onto the portal's context via
	 * PortalContext.
	 */
	FUNC10(portal->portalContext);
}