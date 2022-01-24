#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VirtualTransactionId ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_10__ {int xcnt; int subxcnt; int /*<<< orphan*/  ph_node; int /*<<< orphan*/  regd_count; int /*<<< orphan*/  xmin; int /*<<< orphan*/  takenDuringRecovery; int /*<<< orphan*/  suboverflowed; int /*<<< orphan*/  subxip; int /*<<< orphan*/  xip; int /*<<< orphan*/  xmax; } ;
struct TYPE_9__ {int xcnt; int subxcnt; int /*<<< orphan*/  takenDuringRecovery; int /*<<< orphan*/  suboverflowed; int /*<<< orphan*/  subxip; int /*<<< orphan*/  xip; int /*<<< orphan*/  xmax; int /*<<< orphan*/  xmin; } ;
typedef  TYPE_1__* Snapshot ;
typedef  int /*<<< orphan*/  PGPROC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__* FUNC1 (TYPE_3__*) ; 
 TYPE_3__* CurrentSnapshot ; 
 int /*<<< orphan*/  CurrentSnapshotData ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int FirstSnapshotSet ; 
 TYPE_3__* FirstXactSnapshot ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RegisteredSnapshots ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC19(Snapshot sourcesnap, VirtualTransactionId *sourcevxid,
					   int sourcepid, PGPROC *sourceproc)
{
	/* Caller should have checked this already */
	FUNC0(!FirstSnapshotSet);

	/* Better do this to ensure following Assert succeeds. */
	FUNC6();

	FUNC0(FUNC18(&RegisteredSnapshots));
	FUNC0(FirstXactSnapshot == NULL);
	FUNC0(!FUNC5());

	/*
	 * Even though we are not going to use the snapshot it computes, we must
	 * call GetSnapshotData, for two reasons: (1) to be sure that
	 * CurrentSnapshotData's XID arrays have been allocated, and (2) to update
	 * RecentXmin and RecentGlobalXmin.  (We could alternatively include those
	 * two variables in exported snapshot files, but it seems better to have
	 * snapshot importers compute reasonably up-to-date values for them.)
	 */
	CurrentSnapshot = FUNC4(&CurrentSnapshotData);

	/*
	 * Now copy appropriate fields from the source snapshot.
	 */
	CurrentSnapshot->xmin = sourcesnap->xmin;
	CurrentSnapshot->xmax = sourcesnap->xmax;
	CurrentSnapshot->xcnt = sourcesnap->xcnt;
	FUNC0(sourcesnap->xcnt <= FUNC3());
	FUNC16(CurrentSnapshot->xip, sourcesnap->xip,
		   sourcesnap->xcnt * sizeof(TransactionId));
	CurrentSnapshot->subxcnt = sourcesnap->subxcnt;
	FUNC0(sourcesnap->subxcnt <= FUNC2());
	FUNC16(CurrentSnapshot->subxip, sourcesnap->subxip,
		   sourcesnap->subxcnt * sizeof(TransactionId));
	CurrentSnapshot->suboverflowed = sourcesnap->suboverflowed;
	CurrentSnapshot->takenDuringRecovery = sourcesnap->takenDuringRecovery;
	/* NB: curcid should NOT be copied, it's a local matter */

	/*
	 * Now we have to fix what GetSnapshotData did with MyPgXact->xmin and
	 * TransactionXmin.  There is a race condition: to make sure we are not
	 * causing the global xmin to go backwards, we have to test that the
	 * source transaction is still running, and that has to be done
	 * atomically. So let procarray.c do it.
	 *
	 * Note: in serializable mode, predicate.c will do this a second time. It
	 * doesn't seem worth contorting the logic here to avoid two calls,
	 * especially since it's not clear that predicate.c *must* do this.
	 */
	if (sourceproc != NULL)
	{
		if (!FUNC10(CurrentSnapshot->xmin, sourceproc))
			FUNC12(ERROR,
					(FUNC13(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
					 FUNC15("could not import the requested snapshot"),
					 FUNC14("The source transaction is not running anymore.")));
	}
	else if (!FUNC9(CurrentSnapshot->xmin, sourcevxid))
		FUNC12(ERROR,
				(FUNC13(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC15("could not import the requested snapshot"),
				 FUNC14("The source process with PID %d is not running anymore.",
						   sourcepid)));

	/*
	 * In transaction-snapshot mode, the first snapshot must live until end of
	 * xact, so we must make a copy of it.  Furthermore, if we're running in
	 * serializable mode, predicate.c needs to do its own processing.
	 */
	if (FUNC8())
	{
		if (FUNC7())
			FUNC11(CurrentSnapshot, sourcevxid,
											   sourcepid);
		/* Make a saved copy */
		CurrentSnapshot = FUNC1(CurrentSnapshot);
		FirstXactSnapshot = CurrentSnapshot;
		/* Mark it as "registered" in FirstXactSnapshot */
		FirstXactSnapshot->regd_count++;
		FUNC17(&RegisteredSnapshots, &FirstXactSnapshot->ph_node);
	}

	FirstSnapshotSet = true;
}