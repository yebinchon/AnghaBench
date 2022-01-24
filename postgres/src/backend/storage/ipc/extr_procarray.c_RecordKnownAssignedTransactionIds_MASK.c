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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DEBUG4 ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ STANDBY_INITIALIZED ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ latestObservedXid ; 
 scalar_t__ standbyState ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10(TransactionId xid)
{
	FUNC1(standbyState >= STANDBY_INITIALIZED);
	FUNC1(FUNC6(xid));
	FUNC1(FUNC6(latestObservedXid));

	FUNC8(FUNC9(DEBUG4), "record known xact %u latestObservedXid %u",
		 xid, latestObservedXid);

	/*
	 * When a newly observed xid arrives, it is frequently the case that it is
	 * *not* the next xid in sequence. When this occurs, we must treat the
	 * intervening xids as running also.
	 */
	if (FUNC5(xid, latestObservedXid))
	{
		TransactionId next_expected_xid;

		/*
		 * Extend subtrans like we do in GetNewTransactionId() during normal
		 * operation using individual extend steps. Note that we do not need
		 * to extend clog since its extensions are WAL logged.
		 *
		 * This part has to be done regardless of standbyState since we
		 * immediately start assigning subtransactions to their toplevel
		 * transactions.
		 */
		next_expected_xid = latestObservedXid;
		while (FUNC7(next_expected_xid, xid))
		{
			FUNC4(next_expected_xid);
			FUNC2(next_expected_xid);
		}
		FUNC1(next_expected_xid == xid);

		/*
		 * If the KnownAssignedXids machinery isn't up yet, there's nothing
		 * more to do since we don't track assigned xids yet.
		 */
		if (standbyState <= STANDBY_INITIALIZED)
		{
			latestObservedXid = xid;
			return;
		}

		/*
		 * Add (latestObservedXid, xid] onto the KnownAssignedXids array.
		 */
		next_expected_xid = latestObservedXid;
		FUNC4(next_expected_xid);
		FUNC3(next_expected_xid, xid, false);

		/*
		 * Now we can advance latestObservedXid
		 */
		latestObservedXid = xid;

		/* ShmemVariableCache->nextFullXid must be beyond any observed xid */
		FUNC0(latestObservedXid);
		next_expected_xid = latestObservedXid;
		FUNC4(next_expected_xid);
	}
}