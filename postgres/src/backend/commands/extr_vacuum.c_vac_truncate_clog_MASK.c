#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_3__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  datminmxid; int /*<<< orphan*/  datfrozenxid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MultiXactId ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__* Form_pg_database ;
typedef  TYPE_1__ FormData_pg_database ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DatabaseRelationId ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC21(TransactionId frozenXID,
				  MultiXactId minMulti,
				  TransactionId lastSaneFrozenXid,
				  MultiXactId lastSaneMinMulti)
{
	TransactionId nextXID = FUNC5();
	Relation	relation;
	TableScanDesc scan;
	HeapTuple	tuple;
	Oid			oldestxid_datoid;
	Oid			minmulti_datoid;
	bool		bogus = false;
	bool		frozenAlreadyWrapped = false;

	/* init oldest datoids to sync with my frozenXID/minMulti values */
	oldestxid_datoid = MyDatabaseId;
	minmulti_datoid = MyDatabaseId;

	/*
	 * Scan pg_database to compute the minimum datfrozenxid/datminmxid
	 *
	 * Since vac_update_datfrozenxid updates datfrozenxid/datminmxid in-place,
	 * the values could change while we look at them.  Fetch each one just
	 * once to ensure sane behavior of the comparison logic.  (Here, as in
	 * many other places, we assume that fetching or updating an XID in shared
	 * storage is atomic.)
	 *
	 * Note: we need not worry about a race condition with new entries being
	 * inserted by CREATE DATABASE.  Any such entry will have a copy of some
	 * existing DB's datfrozenxid, and that source DB cannot be ours because
	 * of the interlock against copying a DB containing an active backend.
	 * Hence the new entry will not reduce the minimum.  Also, if two VACUUMs
	 * concurrently modify the datfrozenxid's of different databases, the
	 * worst possible outcome is that pg_xact is not truncated as aggressively
	 * as it could be.
	 */
	relation = FUNC20(DatabaseRelationId, AccessShareLock);

	scan = FUNC17(relation, 0, NULL);

	while ((tuple = FUNC16(scan, ForwardScanDirection)) != NULL)
	{
		volatile FormData_pg_database *dbform = (Form_pg_database) FUNC2(tuple);
		TransactionId datfrozenxid = dbform->datfrozenxid;
		TransactionId datminmxid = dbform->datminmxid;

		FUNC1(FUNC8(datfrozenxid));
		FUNC1(FUNC3(datminmxid));

		/*
		 * If things are working properly, no database should have a
		 * datfrozenxid or datminmxid that is "in the future".  However, such
		 * cases have been known to arise due to bugs in pg_upgrade.  If we
		 * see any entries that are "in the future", chicken out and don't do
		 * anything.  This ensures we won't truncate clog before those
		 * databases have been scanned and cleaned up.  (We will issue the
		 * "already wrapped" warning if appropriate, though.)
		 */
		if (FUNC9(lastSaneFrozenXid, datfrozenxid) ||
			FUNC4(lastSaneMinMulti, datminmxid))
			bogus = true;

		if (FUNC9(nextXID, datfrozenxid))
			frozenAlreadyWrapped = true;
		else if (FUNC9(datfrozenxid, frozenXID))
		{
			frozenXID = datfrozenxid;
			oldestxid_datoid = dbform->oid;
		}

		if (FUNC4(datminmxid, minMulti))
		{
			minMulti = datminmxid;
			minmulti_datoid = dbform->oid;
		}
	}

	FUNC19(scan);

	FUNC18(relation, AccessShareLock);

	/*
	 * Do not truncate CLOG if we seem to have suffered wraparound already;
	 * the computed minimum XID might be bogus.  This case should now be
	 * impossible due to the defenses in GetNewTransactionId, but we keep the
	 * test anyway.
	 */
	if (frozenAlreadyWrapped)
	{
		FUNC13(WARNING,
				(FUNC15("some databases have not been vacuumed in over 2 billion transactions"),
				 FUNC14("You might have already suffered transaction-wraparound data loss.")));
		return;
	}

	/* chicken out if data is bogus in any other way */
	if (bogus)
		return;

	/*
	 * Advance the oldest value for commit timestamps before truncating, so
	 * that if a user requests a timestamp for a transaction we're truncating
	 * away right after this point, they get NULL instead of an ugly "file not
	 * found" error from slru.c.  This doesn't matter for xact/multixact
	 * because they are not subject to arbitrary lookups from users.
	 */
	FUNC0(frozenXID);

	/*
	 * Truncate CLOG, multixact and CommitTs to the oldest computed value.
	 */
	FUNC10(frozenXID, oldestxid_datoid);
	FUNC11(frozenXID);
	FUNC12(minMulti, minmulti_datoid);

	/*
	 * Update the wrap limit for GetNewTransactionId and creation of new
	 * MultiXactIds.  Note: these functions will also signal the postmaster
	 * for an(other) autovac cycle if needed.   XXX should we avoid possibly
	 * signalling twice?
	 */
	FUNC7(frozenXID, oldestxid_datoid);
	FUNC6(minMulti, minmulti_datoid, false);
}