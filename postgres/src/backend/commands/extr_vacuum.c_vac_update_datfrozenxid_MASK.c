#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ TransactionId ;
struct TYPE_4__ {scalar_t__ relkind; scalar_t__ relfrozenxid; scalar_t__ relminmxid; } ;
struct TYPE_3__ {scalar_t__ datfrozenxid; scalar_t__ datminmxid; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ MultiXactId ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__* Form_pg_database ;
typedef  TYPE_2__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DATABASEOID ; 
 int /*<<< orphan*/  DatabaseRelationId ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCARRAY_FLAGS_VACUUM ; 
 scalar_t__ RELKIND_MATVIEW ; 
 scalar_t__ RELKIND_RELATION ; 
 scalar_t__ RELKIND_TOASTVALUE ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

void
FUNC24(void)
{
	HeapTuple	tuple;
	Form_pg_database dbform;
	Relation	relation;
	SysScanDesc scan;
	HeapTuple	classTup;
	TransactionId newFrozenXid;
	MultiXactId newMinMulti;
	TransactionId lastSaneFrozenXid;
	MultiXactId lastSaneMinMulti;
	bool		bogus = false;
	bool		dirty = false;

	/*
	 * Initialize the "min" calculation with GetOldestXmin, which is a
	 * reasonable approximation to the minimum relfrozenxid for not-yet-
	 * committed pg_class entries for new tables; see AddNewRelationTuple().
	 * So we cannot produce a wrong minimum by starting with this.
	 */
	newFrozenXid = FUNC4(NULL, PROCARRAY_FLAGS_VACUUM);

	/*
	 * Similarly, initialize the MultiXact "min" with the value that would be
	 * used on pg_class for new tables.  See AddNewRelationTuple().
	 */
	newMinMulti = FUNC3();

	/*
	 * Identify the latest relfrozenxid and relminmxid values that we could
	 * validly see during the scan.  These are conservative values, but it's
	 * not really worth trying to be more exact.
	 */
	lastSaneFrozenXid = FUNC9();
	lastSaneMinMulti = FUNC10();

	/*
	 * We must seqscan pg_class to find the minimum Xid, because there is no
	 * index that can help us here.
	 */
	relation = FUNC22(RelationRelationId, AccessShareLock);

	scan = FUNC18(relation, InvalidOid, false,
							  NULL, 0, NULL);

	while ((classTup = FUNC20(scan)) != NULL)
	{
		Form_pg_class classForm = (Form_pg_class) FUNC2(classTup);

		/*
		 * Only consider relations able to hold unfrozen XIDs (anything else
		 * should have InvalidTransactionId in relfrozenxid anyway).
		 */
		if (classForm->relkind != RELKIND_RELATION &&
			classForm->relkind != RELKIND_MATVIEW &&
			classForm->relkind != RELKIND_TOASTVALUE)
		{
			FUNC0(!FUNC13(classForm->relfrozenxid));
			FUNC0(!FUNC6(classForm->relminmxid));
			continue;
		}

		/*
		 * Some table AMs might not need per-relation xid / multixid horizons.
		 * It therefore seems reasonable to allow relfrozenxid and relminmxid
		 * to not be set (i.e. set to their respective Invalid*Id)
		 * independently. Thus validate and compute horizon for each only if
		 * set.
		 *
		 * If things are working properly, no relation should have a
		 * relfrozenxid or relminmxid that is "in the future".  However, such
		 * cases have been known to arise due to bugs in pg_upgrade.  If we
		 * see any entries that are "in the future", chicken out and don't do
		 * anything.  This ensures we won't truncate clog & multixact SLRUs
		 * before those relations have been scanned and cleaned up.
		 */

		if (FUNC13(classForm->relfrozenxid))
		{
			FUNC0(FUNC12(classForm->relfrozenxid));

			/* check for values in the future */
			if (FUNC14(lastSaneFrozenXid, classForm->relfrozenxid))
			{
				bogus = true;
				break;
			}

			/* determine new horizon */
			if (FUNC14(classForm->relfrozenxid, newFrozenXid))
				newFrozenXid = classForm->relfrozenxid;
		}

		if (FUNC6(classForm->relminmxid))
		{
			/* check for values in the future */
			if (FUNC7(lastSaneMinMulti, classForm->relminmxid))
			{
				bogus = true;
				break;
			}

			/* determine new horizon */
			if (FUNC7(classForm->relminmxid, newMinMulti))
				newMinMulti = classForm->relminmxid;
		}
	}

	/* we're done with pg_class */
	FUNC19(scan);
	FUNC21(relation, AccessShareLock);

	/* chicken out if bogus data found */
	if (bogus)
		return;

	FUNC0(FUNC12(newFrozenXid));
	FUNC0(FUNC6(newMinMulti));

	/* Now fetch the pg_database tuple we need to update. */
	relation = FUNC22(DatabaseRelationId, RowExclusiveLock);

	/* Fetch a copy of the tuple to scribble on */
	tuple = FUNC11(DATABASEOID, FUNC8(MyDatabaseId));
	if (!FUNC5(tuple))
		FUNC15(ERROR, "could not find tuple for database %u", MyDatabaseId);
	dbform = (Form_pg_database) FUNC2(tuple);

	/*
	 * As in vac_update_relstats(), we ordinarily don't want to let
	 * datfrozenxid go backward; but if it's "in the future" then it must be
	 * corrupt and it seems best to overwrite it.
	 */
	if (dbform->datfrozenxid != newFrozenXid &&
		(FUNC14(dbform->datfrozenxid, newFrozenXid) ||
		 FUNC14(lastSaneFrozenXid, dbform->datfrozenxid)))
	{
		dbform->datfrozenxid = newFrozenXid;
		dirty = true;
	}
	else
		newFrozenXid = dbform->datfrozenxid;

	/* Ditto for datminmxid */
	if (dbform->datminmxid != newMinMulti &&
		(FUNC7(dbform->datminmxid, newMinMulti) ||
		 FUNC7(lastSaneMinMulti, dbform->datminmxid)))
	{
		dbform->datminmxid = newMinMulti;
		dirty = true;
	}
	else
		newMinMulti = dbform->datminmxid;

	if (dirty)
		FUNC17(relation, tuple);

	FUNC16(tuple);
	FUNC21(relation, RowExclusiveLock);

	/*
	 * If we were able to advance datfrozenxid or datminmxid, see if we can
	 * truncate pg_xact and/or pg_multixact.  Also do it if the shared
	 * XID-wrap-limit info is stale, since this action will update that too.
	 */
	if (dirty || FUNC1())
		FUNC23(newFrozenXid, newMinMulti,
						  lastSaneFrozenXid, lastSaneMinMulti);
}