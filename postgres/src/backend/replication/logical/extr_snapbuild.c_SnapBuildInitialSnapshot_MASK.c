#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_12__ {int /*<<< orphan*/  xmin; } ;
struct TYPE_9__ {int /*<<< orphan*/  includes_all_transactions; } ;
struct TYPE_11__ {scalar_t__ state; TYPE_1__ committed; } ;
struct TYPE_10__ {int xcnt; int /*<<< orphan*/ * xip; int /*<<< orphan*/  snapshot_type; int /*<<< orphan*/  xmax; int /*<<< orphan*/  xmin; } ;
typedef  TYPE_2__* Snapshot ;
typedef  TYPE_3__ SnapBuild ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_T_R_SERIALIZATION_FAILURE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FirstSnapshotSet ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 TYPE_8__* MyPgXact ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ProcArrayLock ; 
 scalar_t__ SNAPBUILD_CONSISTENT ; 
 int /*<<< orphan*/  SNAPSHOT_MVCC ; 
 TYPE_2__* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ XACT_REPEATABLE_READ ; 
 scalar_t__ XactIsoLevel ; 
 void* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  xidComparator ; 

Snapshot
FUNC16(SnapBuild *builder)
{
	Snapshot	snap;
	TransactionId xid;
	TransactionId *newxip;
	int			newxcnt = 0;

	FUNC0(!FirstSnapshotSet);
	FUNC0(XactIsoLevel == XACT_REPEATABLE_READ);

	if (builder->state != SNAPBUILD_CONSISTENT)
		FUNC11(ERROR, "cannot build an initial slot snapshot before reaching a consistent state");

	if (!builder->committed.includes_all_transactions)
		FUNC11(ERROR, "cannot build an initial slot snapshot, not all transactions are monitored anymore");

	/* so we don't overwrite the existing value */
	if (FUNC8(MyPgXact->xmin))
		FUNC11(ERROR, "cannot build an initial slot snapshot when MyPgXact->xmin already is valid");

	snap = FUNC6(builder);

	/*
	 * We know that snap->xmin is alive, enforced by the logical xmin
	 * mechanism. Due to that we can do this without locks, we're only
	 * changing our own value.
	 */
#ifdef USE_ASSERT_CHECKING
	{
		TransactionId safeXid;

		LWLockAcquire(ProcArrayLock, LW_SHARED);
		safeXid = GetOldestSafeDecodingTransactionId(false);
		LWLockRelease(ProcArrayLock);

		Assert(TransactionIdPrecedesOrEquals(safeXid, snap->xmin));
	}
#endif

	MyPgXact->xmin = snap->xmin;

	/* allocate in transaction context */
	newxip = (TransactionId *)
		FUNC15(sizeof(TransactionId) * FUNC1());

	/*
	 * snapbuild.c builds transactions in an "inverted" manner, which means it
	 * stores committed transactions in ->xip, not ones in progress. Build a
	 * classical snapshot by marking all non-committed transactions as
	 * in-progress. This can be expensive.
	 */
	for (xid = snap->xmin; FUNC5(xid, snap->xmax);)
	{
		void	   *test;

		/*
		 * Check whether transaction committed using the decoding snapshot
		 * meaning of ->xip.
		 */
		test = FUNC10(&xid, snap->xip, snap->xcnt,
					   sizeof(TransactionId), xidComparator);

		if (test == NULL)
		{
			if (newxcnt >= FUNC1())
				FUNC12(ERROR,
						(FUNC13(ERRCODE_T_R_SERIALIZATION_FAILURE),
						 FUNC14("initial slot snapshot too large")));

			newxip[newxcnt++] = xid;
		}

		FUNC7(xid);
	}

	/* adjust remaining snapshot fields as needed */
	snap->snapshot_type = SNAPSHOT_MVCC;
	snap->xcnt = newxcnt;
	snap->xip = newxip;

	return snap;
}