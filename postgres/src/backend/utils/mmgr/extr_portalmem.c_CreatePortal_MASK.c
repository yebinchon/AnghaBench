#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int atStart; int atEnd; int visible; int /*<<< orphan*/  name; int /*<<< orphan*/  portalContext; int /*<<< orphan*/  creation_time; int /*<<< orphan*/  cursorOptions; int /*<<< orphan*/  strategy; int /*<<< orphan*/  createSubid; int /*<<< orphan*/  activeSubid; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  status; int /*<<< orphan*/  resowner; } ;
typedef  TYPE_1__* Portal ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_SMALL_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CURSOR_OPT_NO_SCROLL ; 
 int /*<<< orphan*/  CurTransactionResourceOwner ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_CURSOR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORTAL_MULTI_QUERY ; 
 int /*<<< orphan*/  PORTAL_NEW ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  PortalCleanup ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char const*) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TopPortalContext ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*) ; 

Portal
FUNC15(const char *name, bool allowDup, bool dupSilent)
{
	Portal		portal;

	FUNC1(FUNC7(name));

	portal = FUNC4(name);
	if (FUNC10(portal))
	{
		if (!allowDup)
			FUNC12(ERROR,
					(FUNC13(ERRCODE_DUPLICATE_CURSOR),
					 FUNC14("cursor \"%s\" already exists", name)));
		if (!dupSilent)
			FUNC12(WARNING,
					(FUNC13(ERRCODE_DUPLICATE_CURSOR),
					 FUNC14("closing existing cursor \"%s\"",
							name)));
		FUNC8(portal, false);
	}

	/* make new portal structure */
	portal = (Portal) FUNC5(TopPortalContext, sizeof *portal);

	/* initialize portal context; typically it won't store much */
	portal->portalContext = FUNC0(TopPortalContext,
												  "PortalContext",
												  ALLOCSET_SMALL_SIZES);

	/* create a resource owner for the portal */
	portal->resowner = FUNC11(CurTransactionResourceOwner,
										   "Portal");

	/* initialize portal fields that don't start off zero */
	portal->status = PORTAL_NEW;
	portal->cleanup = PortalCleanup;
	portal->createSubid = FUNC3();
	portal->activeSubid = portal->createSubid;
	portal->strategy = PORTAL_MULTI_QUERY;
	portal->cursorOptions = CURSOR_OPT_NO_SCROLL;
	portal->atStart = true;
	portal->atEnd = true;		/* disallow fetches until query is set */
	portal->visible = true;
	portal->creation_time = FUNC2();

	/* put portal in table (sets portal->name) */
	FUNC9(portal, name);

	/* reuse portal->name copy */
	FUNC6(portal->portalContext, portal->name);

	return portal;
}