#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_16__ {scalar_t__ t_tableOid; int /*<<< orphan*/  t_self; TYPE_2__* t_data; } ;
struct TYPE_15__ {int t_infomask; } ;
struct TYPE_14__ {scalar_t__ curcid; int /*<<< orphan*/  xcnt; int /*<<< orphan*/  xip; int /*<<< orphan*/  xmax; int /*<<< orphan*/  xmin; int /*<<< orphan*/  subxcnt; int /*<<< orphan*/  subxip; } ;
typedef  TYPE_1__* Snapshot ;
typedef  TYPE_2__* HeapTupleHeader ;
typedef  TYPE_3__* HeapTuple ;
typedef  scalar_t__ CommandId ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int HEAP_XMAX_COMMITTED ; 
 int HEAP_XMAX_INVALID ; 
 scalar_t__ FUNC1 (int) ; 
 int HEAP_XMAX_IS_MULTI ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ InvalidCommandId ; 
 scalar_t__ InvalidOid ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool
FUNC16(HeapTuple htup, Snapshot snapshot,
							   Buffer buffer)
{
	HeapTupleHeader tuple = htup->t_data;
	TransactionId xmin = FUNC5(tuple);
	TransactionId xmax = FUNC4(tuple);

	FUNC0(FUNC9(&htup->t_self));
	FUNC0(htup->t_tableOid != InvalidOid);

	/* inserting transaction aborted */
	if (FUNC7(tuple))
	{
		FUNC0(!FUNC11(xmin));
		return false;
	}
	/* check if it's one of our txids, toplevel is also in there */
	else if (FUNC13(xmin, snapshot->subxip, snapshot->subxcnt))
	{
		bool		resolved;
		CommandId	cmin = FUNC3(tuple);
		CommandId	cmax = InvalidCommandId;

		/*
		 * another transaction might have (tried to) delete this tuple or
		 * cmin/cmax was stored in a combocid. So we need to lookup the actual
		 * values externally.
		 */
		resolved = FUNC10(FUNC8(), snapshot,
												 htup, buffer,
												 &cmin, &cmax);

		if (!resolved)
			FUNC15(ERROR, "could not resolve cmin/cmax of catalog tuple");

		FUNC0(cmin != InvalidCommandId);

		if (cmin >= snapshot->curcid)
			return false;		/* inserted after scan started */
		/* fall through */
	}
	/* committed before our xmin horizon. Do a normal visibility check. */
	else if (FUNC14(xmin, snapshot->xmin))
	{
		FUNC0(!(FUNC6(tuple) &&
				 !FUNC11(xmin)));

		/* check for hint bit first, consult clog afterwards */
		if (!FUNC6(tuple) &&
			!FUNC11(xmin))
			return false;
		/* fall through */
	}
	/* beyond our xmax horizon, i.e. invisible */
	else if (FUNC12(xmin, snapshot->xmax))
	{
		return false;
	}
	/* check if it's a committed transaction in [xmin, xmax) */
	else if (FUNC13(xmin, snapshot->xip, snapshot->xcnt))
	{
		/* fall through */
	}

	/*
	 * none of the above, i.e. between [xmin, xmax) but hasn't committed. I.e.
	 * invisible.
	 */
	else
	{
		return false;
	}

	/* at this point we know xmin is visible, go on to check xmax */

	/* xid invalid or aborted */
	if (tuple->t_infomask & HEAP_XMAX_INVALID)
		return true;
	/* locked tuples are always visible */
	else if (FUNC1(tuple->t_infomask))
		return true;

	/*
	 * We can see multis here if we're looking at user tables or if somebody
	 * SELECT ... FOR SHARE/UPDATE a system table.
	 */
	else if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
	{
		xmax = FUNC2(tuple);
	}

	/* check if it's one of our txids, toplevel is also in there */
	if (FUNC13(xmax, snapshot->subxip, snapshot->subxcnt))
	{
		bool		resolved;
		CommandId	cmin;
		CommandId	cmax = FUNC3(tuple);

		/* Lookup actual cmin/cmax values */
		resolved = FUNC10(FUNC8(), snapshot,
												 htup, buffer,
												 &cmin, &cmax);

		if (!resolved)
			FUNC15(ERROR, "could not resolve combocid to cmax");

		FUNC0(cmax != InvalidCommandId);

		if (cmax >= snapshot->curcid)
			return true;		/* deleted after scan started */
		else
			return false;		/* deleted before scan started */
	}
	/* below xmin horizon, normal transaction state is valid */
	else if (FUNC14(xmax, snapshot->xmin))
	{
		FUNC0(!(tuple->t_infomask & HEAP_XMAX_COMMITTED &&
				 !FUNC11(xmax)));

		/* check hint bit first */
		if (tuple->t_infomask & HEAP_XMAX_COMMITTED)
			return false;

		/* check clog */
		return !FUNC11(xmax);
	}
	/* above xmax horizon, we cannot possibly see the deleting transaction */
	else if (FUNC12(xmax, snapshot->xmax))
		return true;
	/* xmax is between [xmin, xmax), check known committed array */
	else if (FUNC13(xmax, snapshot->xip, snapshot->xcnt))
		return false;
	/* xmax is between [xmin, xmax), but known not to have committed yet */
	else
		return true;
}