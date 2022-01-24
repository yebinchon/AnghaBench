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
struct TYPE_3__ {int xinfo; int /*<<< orphan*/  nrels; int /*<<< orphan*/  xnodes; int /*<<< orphan*/  subxacts; int /*<<< orphan*/  nsubxacts; } ;
typedef  TYPE_1__ xl_xact_parsed_abort ;
typedef  int /*<<< orphan*/  TransactionId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ STANDBY_DISABLED ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int XACT_XINFO_HAS_AE_LOCKS ; 
 scalar_t__ standbyState ; 

__attribute__((used)) static void
FUNC9(xl_xact_parsed_abort *parsed, TransactionId xid)
{
	TransactionId max_xid;

	FUNC1(FUNC7(xid));

	/* Make sure nextFullXid is beyond any XID mentioned in the record. */
	max_xid = FUNC8(xid,
								  parsed->nsubxacts,
								  parsed->subxacts);
	FUNC0(max_xid);

	if (standbyState == STANDBY_DISABLED)
	{
		/* Mark the transaction aborted in pg_xact, no need for async stuff */
		FUNC6(xid, parsed->nsubxacts, parsed->subxacts);
	}
	else
	{
		/*
		 * If a transaction completion record arrives that has as-yet
		 * unobserved subtransactions then this will not have been fully
		 * handled by the call to RecordKnownAssignedTransactionIds() in the
		 * main recovery loop in xlog.c. So we need to do bookkeeping again to
		 * cover that case. This is confusing and it is easy to think this
		 * call is irrelevant, which has happened three times in development
		 * already. Leave it in.
		 */
		FUNC4(max_xid);

		/* Mark the transaction aborted in pg_xact, no need for async stuff */
		FUNC6(xid, parsed->nsubxacts, parsed->subxacts);

		/*
		 * We must update the ProcArray after we have marked clog.
		 */
		FUNC3(
											  xid, parsed->nsubxacts, parsed->subxacts, max_xid);

		/*
		 * There are no invalidation messages to send or undo.
		 */

		/*
		 * Release locks, if any. There are no invalidations to send.
		 */
		if (parsed->xinfo & XACT_XINFO_HAS_AE_LOCKS)
			FUNC5(xid, parsed->nsubxacts, parsed->subxacts);
	}

	/* Make sure files supposed to be dropped are dropped */
	FUNC2(parsed->xnodes, parsed->nrels, true);
}