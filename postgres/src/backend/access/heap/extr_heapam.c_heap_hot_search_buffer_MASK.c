#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_13__ {TYPE_1__* t_data; int /*<<< orphan*/  t_self; int /*<<< orphan*/  t_tableOid; int /*<<< orphan*/  t_len; } ;
struct TYPE_12__ {int /*<<< orphan*/  t_ctid; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_1__* HeapTupleHeader ;
typedef  TYPE_2__* HeapTuple ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RecentGlobalXmin ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 

bool
FUNC25(ItemPointer tid, Relation relation, Buffer buffer,
					   Snapshot snapshot, HeapTuple heapTuple,
					   bool *all_dead, bool first_call)
{
	Page		dp = (Page) FUNC2(buffer);
	TransactionId prev_xmax = InvalidTransactionId;
	BlockNumber blkno;
	OffsetNumber offnum;
	bool		at_chain_start;
	bool		valid;
	bool		skip;

	/* If this is not the first call, previous call returned a (live!) tuple */
	if (all_dead)
		*all_dead = first_call;

	blkno = FUNC14(tid);
	offnum = FUNC15(tid);
	at_chain_start = first_call;
	skip = !first_call;

	FUNC0(FUNC24(RecentGlobalXmin));
	FUNC0(FUNC1(buffer) == blkno);

	/* Scan through possible multiple members of HOT-chain */
	for (;;)
	{
		ItemId		lp;

		/* check for bogus TID */
		if (offnum < FirstOffsetNumber || offnum > FUNC20(dp))
			break;

		lp = FUNC19(dp, offnum);

		/* check for unused, dead, or redirected items */
		if (!FUNC12(lp))
		{
			/* We should only see a redirect at start of chain */
			if (FUNC13(lp) && at_chain_start)
			{
				/* Follow the redirect */
				offnum = FUNC11(lp);
				at_chain_start = false;
				continue;
			}
			/* else must be end of chain */
			break;
		}

		/*
		 * Update heapTuple to point to the element of the HOT chain we're
		 * currently investigating. Having t_self set correctly is important
		 * because the SSI checks and the *Satisfies routine for historical
		 * MVCC snapshots need the correct tid to decide about the visibility.
		 */
		heapTuple->t_data = (HeapTupleHeader) FUNC18(dp, lp);
		heapTuple->t_len = FUNC10(lp);
		heapTuple->t_tableOid = FUNC22(relation);
		FUNC16(&heapTuple->t_self, blkno, offnum);

		/*
		 * Shouldn't see a HEAP_ONLY tuple at chain start.
		 */
		if (at_chain_start && FUNC6(heapTuple))
			break;

		/*
		 * The xmin should match the previous xmax value, else chain is
		 * broken.
		 */
		if (FUNC24(prev_xmax) &&
			!FUNC23(prev_xmax,
								 FUNC5(heapTuple->t_data)))
			break;

		/*
		 * When first_call is true (and thus, skip is initially false) we'll
		 * return the first tuple we find.  But on later passes, heapTuple
		 * will initially be pointing to the tuple we returned last time.
		 * Returning it again would be incorrect (and would loop forever), so
		 * we skip it and return the next match we find.
		 */
		if (!skip)
		{
			/* If it's visible per the snapshot, we must return it */
			valid = FUNC9(heapTuple, snapshot, buffer);
			FUNC3(valid, relation, heapTuple,
											buffer, snapshot);

			if (valid)
			{
				FUNC17(tid, offnum);
				FUNC21(relation, heapTuple, snapshot);
				if (all_dead)
					*all_dead = false;
				return true;
			}
		}
		skip = false;

		/*
		 * If we can't see it, maybe no one else can either.  At caller
		 * request, check whether all chain members are dead to all
		 * transactions.
		 *
		 * Note: if you change the criterion here for what is "dead", fix the
		 * planner's get_actual_variable_range() function to match.
		 */
		if (all_dead && *all_dead &&
			!FUNC8(heapTuple, RecentGlobalXmin))
			*all_dead = false;

		/*
		 * Check to see if HOT chain continues past this tuple; if so fetch
		 * the next offnum and loop around.
		 */
		if (FUNC7(heapTuple))
		{
			FUNC0(FUNC14(&heapTuple->t_data->t_ctid) ==
				   blkno);
			offnum = FUNC15(&heapTuple->t_data->t_ctid);
			at_chain_start = false;
			prev_xmax = FUNC4(heapTuple->t_data);
		}
		else
			break;				/* end of chain */
	}

	return false;
}