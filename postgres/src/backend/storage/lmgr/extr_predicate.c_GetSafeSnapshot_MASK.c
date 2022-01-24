#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  possibleUnsafeConflicts; } ;
typedef  int /*<<< orphan*/  Snapshot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  ERRCODE_T_R_SERIALIZATION_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidPid ; 
 TYPE_1__* InvalidSerializableXact ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_1__* MySerializableXact ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SXACT_FLAG_DEFERRABLE_WAITING ; 
 int /*<<< orphan*/  SerializableXactHashLock ; 
 int FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  WAIT_EVENT_SAFE_SNAPSHOT ; 
 scalar_t__ XactDeferrable ; 
 scalar_t__ XactReadOnly ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static Snapshot
FUNC12(Snapshot origSnapshot)
{
	Snapshot	snapshot;

	FUNC0(XactReadOnly && XactDeferrable);

	while (true)
	{
		/*
		 * GetSerializableTransactionSnapshotInt is going to call
		 * GetSnapshotData, so we need to provide it the static snapshot area
		 * our caller passed to us.  The pointer returned is actually the same
		 * one passed to it, but we avoid assuming that here.
		 */
		snapshot = FUNC1(origSnapshot,
														 NULL, InvalidPid);

		if (MySerializableXact == InvalidSerializableXact)
			return snapshot;	/* no concurrent r/w xacts; it's safe */

		FUNC2(SerializableXactHashLock, LW_EXCLUSIVE);

		/*
		 * Wait for concurrent transactions to finish. Stop early if one of
		 * them marked us as conflicted.
		 */
		MySerializableXact->flags |= SXACT_FLAG_DEFERRABLE_WAITING;
		while (!(FUNC6(&MySerializableXact->possibleUnsafeConflicts) ||
				 FUNC8(MySerializableXact)))
		{
			FUNC3(SerializableXactHashLock);
			FUNC4(WAIT_EVENT_SAFE_SNAPSHOT);
			FUNC2(SerializableXactHashLock, LW_EXCLUSIVE);
		}
		MySerializableXact->flags &= ~SXACT_FLAG_DEFERRABLE_WAITING;

		if (!FUNC8(MySerializableXact))
		{
			FUNC3(SerializableXactHashLock);
			break;				/* success */
		}

		FUNC3(SerializableXactHashLock);

		/* else, need to retry... */
		FUNC9(DEBUG2,
				(FUNC10(ERRCODE_T_R_SERIALIZATION_FAILURE),
				 FUNC11("deferrable snapshot was unsafe; trying a new one")));
		FUNC5(false, false);
	}

	/*
	 * Now we have a safe snapshot, so we don't need to do any further checks.
	 */
	FUNC0(FUNC7(MySerializableXact));
	FUNC5(false, true);

	return snapshot;
}