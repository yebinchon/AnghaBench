#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ph_node; int /*<<< orphan*/  regd_count; } ;
typedef  TYPE_1__* Snapshot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 TYPE_1__* CurrentSnapshot ; 
 int /*<<< orphan*/  CurrentSnapshotData ; 
 int /*<<< orphan*/  ERROR ; 
 int FirstSnapshotSet ; 
 TYPE_1__* FirstXactSnapshot ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* HistoricSnapshot ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  RegisteredSnapshots ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 

Snapshot
FUNC12(void)
{
	/*
	 * Return historic snapshot if doing logical decoding. We'll never need a
	 * non-historic transaction snapshot in this (sub-)transaction, so there's
	 * no need to be careful to set one up for later calls to
	 * GetTransactionSnapshot().
	 */
	if (FUNC4())
	{
		FUNC0(!FirstSnapshotSet);
		return HistoricSnapshot;
	}

	/* First call in transaction? */
	if (!FirstSnapshotSet)
	{
		/*
		 * Don't allow catalog snapshot to be older than xact snapshot.  Must
		 * do this first to allow the empty-heap Assert to succeed.
		 */
		FUNC5();

		FUNC0(FUNC11(&RegisteredSnapshots));
		FUNC0(FirstXactSnapshot == NULL);

		if (FUNC6())
			FUNC9(ERROR,
				 "cannot take query snapshot during a parallel operation");

		/*
		 * In transaction-snapshot mode, the first snapshot must live until
		 * end of xact regardless of what the caller does with it, so we must
		 * make a copy of it rather than returning CurrentSnapshotData
		 * directly.  Furthermore, if we're running in serializable mode,
		 * predicate.c needs to wrap the snapshot fetch in its own processing.
		 */
		if (FUNC8())
		{
			/* First, create the snapshot in CurrentSnapshotData */
			if (FUNC7())
				CurrentSnapshot = FUNC2(&CurrentSnapshotData);
			else
				CurrentSnapshot = FUNC3(&CurrentSnapshotData);
			/* Make a saved copy */
			CurrentSnapshot = FUNC1(CurrentSnapshot);
			FirstXactSnapshot = CurrentSnapshot;
			/* Mark it as "registered" in FirstXactSnapshot */
			FirstXactSnapshot->regd_count++;
			FUNC10(&RegisteredSnapshots, &FirstXactSnapshot->ph_node);
		}
		else
			CurrentSnapshot = FUNC3(&CurrentSnapshotData);

		FirstSnapshotSet = true;
		return CurrentSnapshot;
	}

	if (FUNC8())
		return CurrentSnapshot;

	/* Don't allow catalog snapshot to be older than xact snapshot. */
	FUNC5();

	CurrentSnapshot = FUNC3(&CurrentSnapshotData);

	return CurrentSnapshot;
}