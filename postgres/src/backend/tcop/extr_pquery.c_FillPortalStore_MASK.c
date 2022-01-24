#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  (* rDestroy ) (TYPE_2__*) ;} ;
struct TYPE_12__ {int strategy; int /*<<< orphan*/  commandTag; int /*<<< orphan*/  stmts; int /*<<< orphan*/  holdContext; int /*<<< orphan*/  holdStore; } ;
typedef  TYPE_1__* Portal ;
typedef  TYPE_2__ DestReceiver ;

/* Variables and functions */
 int COMPLETION_TAG_BUFSIZE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DestTuplestore ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  None_Receiver ; 
#define  PORTAL_ONE_MOD_WITH 130 
#define  PORTAL_ONE_RETURNING 129 
#define  PORTAL_UTIL_SELECT 128 
 int /*<<< orphan*/  PlannedStmt ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC9(Portal portal, bool isTopLevel)
{
	DestReceiver *treceiver;
	char		completionTag[COMPLETION_TAG_BUFSIZE];

	FUNC1(portal);
	treceiver = FUNC0(DestTuplestore);
	FUNC4(treceiver,
									portal->holdStore,
									portal->holdContext,
									false);

	completionTag[0] = '\0';

	switch (portal->strategy)
	{
		case PORTAL_ONE_RETURNING:
		case PORTAL_ONE_MOD_WITH:

			/*
			 * Run the portal to completion just as for the default
			 * PORTAL_MULTI_QUERY case, but send the primary query's output to
			 * the tuplestore.  Auxiliary query outputs are discarded. Set the
			 * portal's holdSnapshot to the snapshot used (or a copy of it).
			 */
			FUNC2(portal, isTopLevel, true,
						   treceiver, None_Receiver, completionTag);
			break;

		case PORTAL_UTIL_SELECT:
			FUNC3(portal, FUNC6(PlannedStmt, portal->stmts),
							 isTopLevel, true, treceiver, completionTag);
			break;

		default:
			FUNC5(ERROR, "unsupported portal strategy: %d",
				 (int) portal->strategy);
			break;
	}

	/* Override default completion tag with actual command result */
	if (completionTag[0] != '\0')
		portal->commandTag = FUNC7(completionTag);

	treceiver->rDestroy(treceiver);
}