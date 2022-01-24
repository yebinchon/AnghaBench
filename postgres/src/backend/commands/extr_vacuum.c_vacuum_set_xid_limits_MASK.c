#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ TransactionId ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ MultiXactId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FirstMultiXactId ; 
 scalar_t__ FirstNormalTransactionId ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  PROCARRAY_FLAGS_VACUUM ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  WARNING ; 
 int autovacuum_freeze_max_age ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int vacuum_freeze_min_age ; 
 int vacuum_freeze_table_age ; 
 int vacuum_multixact_freeze_min_age ; 
 int vacuum_multixact_freeze_table_age ; 

void
FUNC14(Relation rel,
					  int freeze_min_age,
					  int freeze_table_age,
					  int multixact_freeze_min_age,
					  int multixact_freeze_table_age,
					  TransactionId *oldestXmin,
					  TransactionId *freezeLimit,
					  TransactionId *xidFullScanLimit,
					  MultiXactId *multiXactCutoff,
					  MultiXactId *mxactFullScanLimit)
{
	int			freezemin;
	int			mxid_freezemin;
	int			effective_multixact_freeze_max_age;
	TransactionId limit;
	TransactionId safeLimit;
	MultiXactId oldestMxact;
	MultiXactId mxactLimit;
	MultiXactId safeMxactLimit;

	/*
	 * We can always ignore processes running lazy vacuum.  This is because we
	 * use these values only for deciding which tuples we must keep in the
	 * tables.  Since lazy vacuum doesn't write its XID anywhere, it's safe to
	 * ignore it.  In theory it could be problematic to ignore lazy vacuums in
	 * a full vacuum, but keep in mind that only one vacuum process can be
	 * working on a particular table at any time, and that each vacuum is
	 * always an independent transaction.
	 */
	*oldestXmin =
		FUNC9(FUNC2(rel, PROCARRAY_FLAGS_VACUUM), rel);

	FUNC0(FUNC8(*oldestXmin));

	/*
	 * Determine the minimum freeze age to use: as specified by the caller, or
	 * vacuum_freeze_min_age, but in any case not more than half
	 * autovacuum_freeze_max_age, so that autovacuums to prevent XID
	 * wraparound won't occur too frequently.
	 */
	freezemin = freeze_min_age;
	if (freezemin < 0)
		freezemin = vacuum_freeze_min_age;
	freezemin = FUNC3(freezemin, autovacuum_freeze_max_age / 2);
	FUNC0(freezemin >= 0);

	/*
	 * Compute the cutoff XID, being careful not to generate a "permanent" XID
	 */
	limit = *oldestXmin - freezemin;
	if (!FUNC8(limit))
		limit = FirstNormalTransactionId;

	/*
	 * If oldestXmin is very far back (in practice, more than
	 * autovacuum_freeze_max_age / 2 XIDs old), complain and force a minimum
	 * freeze age of zero.
	 */
	safeLimit = FUNC6() - autovacuum_freeze_max_age;
	if (!FUNC8(safeLimit))
		safeLimit = FirstNormalTransactionId;

	if (FUNC10(limit, safeLimit))
	{
		FUNC11(WARNING,
				(FUNC13("oldest xmin is far in the past"),
				 FUNC12("Close open transactions soon to avoid wraparound problems.\n"
						 "You might also need to commit or roll back old prepared transactions, or drop stale replication slots.")));
		limit = *oldestXmin;
	}

	*freezeLimit = limit;

	/*
	 * Compute the multixact age for which freezing is urgent.  This is
	 * normally autovacuum_multixact_freeze_max_age, but may be less if we are
	 * short of multixact member space.
	 */
	effective_multixact_freeze_max_age = FUNC5();

	/*
	 * Determine the minimum multixact freeze age to use: as specified by
	 * caller, or vacuum_multixact_freeze_min_age, but in any case not more
	 * than half effective_multixact_freeze_max_age, so that autovacuums to
	 * prevent MultiXact wraparound won't occur too frequently.
	 */
	mxid_freezemin = multixact_freeze_min_age;
	if (mxid_freezemin < 0)
		mxid_freezemin = vacuum_multixact_freeze_min_age;
	mxid_freezemin = FUNC3(mxid_freezemin,
						 effective_multixact_freeze_max_age / 2);
	FUNC0(mxid_freezemin >= 0);

	/* compute the cutoff multi, being careful to generate a valid value */
	oldestMxact = FUNC1();
	mxactLimit = oldestMxact - mxid_freezemin;
	if (mxactLimit < FirstMultiXactId)
		mxactLimit = FirstMultiXactId;

	safeMxactLimit =
		FUNC7() - effective_multixact_freeze_max_age;
	if (safeMxactLimit < FirstMultiXactId)
		safeMxactLimit = FirstMultiXactId;

	if (FUNC4(mxactLimit, safeMxactLimit))
	{
		FUNC11(WARNING,
				(FUNC13("oldest multixact is far in the past"),
				 FUNC12("Close open transactions with multixacts soon to avoid wraparound problems.")));
		/* Use the safe limit, unless an older mxact is still running */
		if (FUNC4(oldestMxact, safeMxactLimit))
			mxactLimit = oldestMxact;
		else
			mxactLimit = safeMxactLimit;
	}

	*multiXactCutoff = mxactLimit;

	if (xidFullScanLimit != NULL)
	{
		int			freezetable;

		FUNC0(mxactFullScanLimit != NULL);

		/*
		 * Determine the table freeze age to use: as specified by the caller,
		 * or vacuum_freeze_table_age, but in any case not more than
		 * autovacuum_freeze_max_age * 0.95, so that if you have e.g nightly
		 * VACUUM schedule, the nightly VACUUM gets a chance to freeze tuples
		 * before anti-wraparound autovacuum is launched.
		 */
		freezetable = freeze_table_age;
		if (freezetable < 0)
			freezetable = vacuum_freeze_table_age;
		freezetable = FUNC3(freezetable, autovacuum_freeze_max_age * 0.95);
		FUNC0(freezetable >= 0);

		/*
		 * Compute XID limit causing a full-table vacuum, being careful not to
		 * generate a "permanent" XID.
		 */
		limit = FUNC6() - freezetable;
		if (!FUNC8(limit))
			limit = FirstNormalTransactionId;

		*xidFullScanLimit = limit;

		/*
		 * Similar to the above, determine the table freeze age to use for
		 * multixacts: as specified by the caller, or
		 * vacuum_multixact_freeze_table_age, but in any case not more than
		 * autovacuum_multixact_freeze_table_age * 0.95, so that if you have
		 * e.g. nightly VACUUM schedule, the nightly VACUUM gets a chance to
		 * freeze multixacts before anti-wraparound autovacuum is launched.
		 */
		freezetable = multixact_freeze_table_age;
		if (freezetable < 0)
			freezetable = vacuum_multixact_freeze_table_age;
		freezetable = FUNC3(freezetable,
						  effective_multixact_freeze_max_age * 0.95);
		FUNC0(freezetable >= 0);

		/*
		 * Compute MultiXact limit causing a full-table vacuum, being careful
		 * to generate a valid MultiXact value.
		 */
		mxactLimit = FUNC7() - freezetable;
		if (mxactLimit < FirstMultiXactId)
			mxactLimit = FirstMultiXactId;

		*mxactFullScanLimit = mxactLimit;
	}
	else
	{
		FUNC0(mxactFullScanLimit == NULL);
	}
}