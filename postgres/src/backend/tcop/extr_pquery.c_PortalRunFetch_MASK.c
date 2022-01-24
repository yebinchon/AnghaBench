#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
struct TYPE_9__ {int strategy; int /*<<< orphan*/  status; int /*<<< orphan*/  holdStore; int /*<<< orphan*/  portalContext; scalar_t__ resowner; int /*<<< orphan*/  run_once; } ;
typedef  scalar_t__ ResourceOwner ;
typedef  TYPE_1__* Portal ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  FetchDirection ;
typedef  int /*<<< orphan*/  DestReceiver ;

/* Variables and functions */
 TYPE_1__* ActivePortal ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ CurrentResourceOwner ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
#define  PORTAL_ONE_MOD_WITH 131 
#define  PORTAL_ONE_RETURNING 130 
#define  PORTAL_ONE_SELECT 129 
 int /*<<< orphan*/  PORTAL_READY ; 
#define  PORTAL_UTIL_SELECT 128 
 int /*<<< orphan*/  PortalContext ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

uint64
FUNC13(Portal portal,
			   FetchDirection fdirection,
			   long count,
			   DestReceiver *dest)
{
	uint64		result;
	Portal		saveActivePortal;
	ResourceOwner saveResourceOwner;
	MemoryContext savePortalContext;
	MemoryContext oldContext;

	FUNC1(FUNC11(portal));

	/*
	 * Check for improper portal use, and mark portal active.
	 */
	FUNC4(portal);

	/* If supporting FETCH, portal can't be run-once. */
	FUNC0(!portal->run_once);

	/*
	 * Set up global portal context pointers.
	 */
	saveActivePortal = ActivePortal;
	saveResourceOwner = CurrentResourceOwner;
	savePortalContext = PortalContext;
	FUNC10();
	{
		ActivePortal = portal;
		if (portal->resowner)
			CurrentResourceOwner = portal->resowner;
		PortalContext = portal->portalContext;

		oldContext = FUNC6(PortalContext);

		switch (portal->strategy)
		{
			case PORTAL_ONE_SELECT:
				result = FUNC2(portal, fdirection, count, dest);
				break;

			case PORTAL_ONE_RETURNING:
			case PORTAL_ONE_MOD_WITH:
			case PORTAL_UTIL_SELECT:

				/*
				 * If we have not yet run the command, do so, storing its
				 * results in the portal's tuplestore.
				 */
				if (!portal->holdStore)
					FUNC3(portal, false /* isTopLevel */ );

				/*
				 * Now fetch desired portion of results.
				 */
				result = FUNC2(portal, fdirection, count, dest);
				break;

			default:
				FUNC12(ERROR, "unsupported portal strategy");
				result = 0;		/* keep compiler quiet */
				break;
		}
	}
	FUNC7();
	{
		/* Uncaught error while executing portal: mark it dead */
		FUNC5(portal);

		/* Restore global vars and propagate error */
		ActivePortal = saveActivePortal;
		CurrentResourceOwner = saveResourceOwner;
		PortalContext = savePortalContext;

		FUNC9();
	}
	FUNC8();

	FUNC6(oldContext);

	/* Mark portal not active */
	portal->status = PORTAL_READY;

	ActivePortal = saveActivePortal;
	CurrentResourceOwner = saveResourceOwner;
	PortalContext = savePortalContext;

	return result;
}