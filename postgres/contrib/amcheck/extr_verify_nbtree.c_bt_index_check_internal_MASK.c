#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  rd_smgr; } ;
typedef  TYPE_1__* Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  LOCKMODE ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  ERRCODE_INDEX_CORRUPTED ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_TABLE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  ShareLock ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(Oid indrelid, bool parentcheck, bool heapallindexed,
						bool rootdescend)
{
	Oid			heapid;
	Relation	indrel;
	Relation	heaprel;
	LOCKMODE	lockmode;

	if (parentcheck)
		lockmode = ShareLock;
	else
		lockmode = AccessShareLock;

	/*
	 * We must lock table before index to avoid deadlocks.  However, if the
	 * passed indrelid isn't an index then IndexGetRelation() will fail.
	 * Rather than emitting a not-very-helpful error message, postpone
	 * complaining, expecting that the is-it-an-index test below will fail.
	 *
	 * In hot standby mode this will raise an error when parentcheck is true.
	 */
	heapid = FUNC0(indrelid, true);
	if (FUNC1(heapid))
		heaprel = FUNC15(heapid, lockmode);
	else
		heaprel = NULL;

	/*
	 * Open the target index relations separately (like relation_openrv(), but
	 * with heap relation locked first to prevent deadlocking).  In hot
	 * standby mode this will raise an error when parentcheck is true.
	 *
	 * There is no need for the usual indcheckxmin usability horizon test
	 * here, even in the heapallindexed case, because index undergoing
	 * verification only needs to have entries for a new transaction snapshot.
	 * (If this is a parentcheck verification, there is no question about
	 * committed or recently dead heap tuples lacking index entries due to
	 * concurrent activity.)
	 */
	indrel = FUNC12(indrelid, lockmode);

	/*
	 * Since we did the IndexGetRelation call above without any lock, it's
	 * barely possible that a race against an index drop/recreation could have
	 * netted us the wrong table.
	 */
	if (heaprel == NULL || heapid != FUNC0(indrelid, false))
		FUNC8(ERROR,
				(FUNC9(ERRCODE_UNDEFINED_TABLE),
				 FUNC10("could not open parent table of index %s",
						FUNC2(indrel))));

	/* Relation suitable for checking as B-Tree? */
	FUNC6(indrel);

	if (FUNC7(indrel))
	{
		bool	heapkeyspace;

		FUNC3(indrel);
		if (!FUNC13(indrel->rd_smgr, MAIN_FORKNUM))
			FUNC8(ERROR,
					(FUNC9(ERRCODE_INDEX_CORRUPTED),
					 FUNC10("index \"%s\" lacks a main relation fork",
							FUNC2(indrel))));

		/* Check index, possibly against table it is an index on */
		heapkeyspace = FUNC4(indrel);
		FUNC5(indrel, heaprel, heapkeyspace, parentcheck,
							 heapallindexed, rootdescend);
	}

	/*
	 * Release locks early. That's ok here because nothing in the called
	 * routines will trigger shared cache invalidations to be sent, so we can
	 * relax the usual pattern of only releasing locks after commit.
	 */
	FUNC11(indrel, lockmode);
	if (heaprel)
		FUNC14(heaprel, lockmode);
}