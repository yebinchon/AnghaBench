#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_18__ {int /*<<< orphan*/  t_self; void* t_len; TYPE_2__* t_data; int /*<<< orphan*/  t_tableOid; } ;
struct TYPE_17__ {int /*<<< orphan*/  t_ctid; } ;
struct TYPE_16__ {int /*<<< orphan*/  latestRemovedXid; scalar_t__* marked; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ PruneState ;
typedef  int /*<<< orphan*/  Page ;
typedef  size_t OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_2__* HeapTupleHeader ;
typedef  TYPE_3__ HeapTupleData ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 size_t FirstOffsetNumber ; 
#define  HEAPTUPLE_DEAD 132 
#define  HEAPTUPLE_DELETE_IN_PROGRESS 131 
#define  HEAPTUPLE_INSERT_IN_PROGRESS 130 
#define  HEAPTUPLE_LIVE 129 
#define  HEAPTUPLE_RECENTLY_DEAD 128 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t InvalidOffsetNumber ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 size_t FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 size_t FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 int MaxHeapTuplesPerPage ; 
 scalar_t__ FUNC19 (size_t) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*,size_t) ; 

__attribute__((used)) static int
FUNC31(Relation relation, Buffer buffer, OffsetNumber rootoffnum,
				 TransactionId OldestXmin,
				 PruneState *prstate)
{
	int			ndeleted = 0;
	Page		dp = (Page) FUNC2(buffer);
	TransactionId priorXmax = InvalidTransactionId;
	ItemId		rootlp;
	HeapTupleHeader htup;
	OffsetNumber latestdead = InvalidOffsetNumber,
				maxoff = FUNC22(dp),
				offnum;
	OffsetNumber chainitems[MaxHeapTuplesPerPage];
	int			nchain = 0,
				i;
	HeapTupleData tup;

	tup.t_tableOid = FUNC23(relation);

	rootlp = FUNC21(dp, rootoffnum);

	/*
	 * If it's a heap-only tuple, then it is not the start of a HOT chain.
	 */
	if (FUNC13(rootlp))
	{
		htup = (HeapTupleHeader) FUNC20(dp, rootlp);

		tup.t_data = htup;
		tup.t_len = FUNC10(rootlp);
		FUNC18(&(tup.t_self), FUNC1(buffer), rootoffnum);

		if (FUNC7(htup))
		{
			/*
			 * If the tuple is DEAD and doesn't chain to anything else, mark
			 * it unused immediately.  (If it does chain, we can only remove
			 * it as part of pruning its chain.)
			 *
			 * We need this primarily to handle aborted HOT updates, that is,
			 * XMIN_INVALID heap-only tuples.  Those might not be linked to by
			 * any chain, since the parent tuple might be re-updated before
			 * any pruning occurs.  So we have to be able to reap them
			 * separately from chain-pruning.  (Note that
			 * HeapTupleHeaderIsHotUpdated will never return true for an
			 * XMIN_INVALID tuple, so this code will work even when there were
			 * sequential updates within the aborted transaction.)
			 *
			 * Note that we might first arrive at a dead heap-only tuple
			 * either here or while following a chain below.  Whichever path
			 * gets there first will mark the tuple unused.
			 */
			if (FUNC9(&tup, OldestXmin, buffer)
				== HEAPTUPLE_DEAD && !FUNC8(htup))
			{
				FUNC30(prstate, rootoffnum);
				FUNC3(htup,
													   &prstate->latestRemovedXid);
				ndeleted++;
			}

			/* Nothing more to do */
			return ndeleted;
		}
	}

	/* Start from the root tuple */
	offnum = rootoffnum;

	/* while not end of the chain */
	for (;;)
	{
		ItemId		lp;
		bool		tupdead,
					recent_dead;

		/* Some sanity checks */
		if (offnum < FirstOffsetNumber || offnum > maxoff)
			break;

		/* If item is already processed, stop --- it must not be same chain */
		if (prstate->marked[offnum])
			break;

		lp = FUNC21(dp, offnum);

		/* Unused item obviously isn't part of the chain */
		if (!FUNC15(lp))
			break;

		/*
		 * If we are looking at the redirected root line pointer, jump to the
		 * first normal tuple in the chain.  If we find a redirect somewhere
		 * else, stop --- it must not be same chain.
		 */
		if (FUNC14(lp))
		{
			if (nchain > 0)
				break;			/* not at start of chain */
			chainitems[nchain++] = offnum;
			offnum = FUNC11(rootlp);
			continue;
		}

		/*
		 * Likewise, a dead line pointer can't be part of the chain. (We
		 * already eliminated the case of dead root tuple outside this
		 * function.)
		 */
		if (FUNC12(lp))
			break;

		FUNC0(FUNC13(lp));
		htup = (HeapTupleHeader) FUNC20(dp, lp);

		tup.t_data = htup;
		tup.t_len = FUNC10(lp);
		FUNC18(&(tup.t_self), FUNC1(buffer), offnum);

		/*
		 * Check the tuple XMIN against prior XMAX, if any
		 */
		if (FUNC25(priorXmax) &&
			!FUNC24(FUNC5(htup), priorXmax))
			break;

		/*
		 * OK, this tuple is indeed a member of the chain.
		 */
		chainitems[nchain++] = offnum;

		/*
		 * Check tuple's visibility status.
		 */
		tupdead = recent_dead = false;

		switch (FUNC9(&tup, OldestXmin, buffer))
		{
			case HEAPTUPLE_DEAD:
				tupdead = true;
				break;

			case HEAPTUPLE_RECENTLY_DEAD:
				recent_dead = true;

				/*
				 * This tuple may soon become DEAD.  Update the hint field so
				 * that the page is reconsidered for pruning in future.
				 */
				FUNC28(prstate,
										   FUNC4(htup));
				break;

			case HEAPTUPLE_DELETE_IN_PROGRESS:

				/*
				 * This tuple may soon become DEAD.  Update the hint field so
				 * that the page is reconsidered for pruning in future.
				 */
				FUNC28(prstate,
										   FUNC4(htup));
				break;

			case HEAPTUPLE_LIVE:
			case HEAPTUPLE_INSERT_IN_PROGRESS:

				/*
				 * If we wanted to optimize for aborts, we might consider
				 * marking the page prunable when we see INSERT_IN_PROGRESS.
				 * But we don't.  See related decisions about when to mark the
				 * page prunable in heapam.c.
				 */
				break;

			default:
				FUNC26(ERROR, "unexpected HeapTupleSatisfiesVacuum result");
				break;
		}

		/*
		 * Remember the last DEAD tuple seen.  We will advance past
		 * RECENTLY_DEAD tuples just in case there's a DEAD one after them;
		 * but we can't advance past anything else.  (XXX is it really worth
		 * continuing to scan beyond RECENTLY_DEAD?  The case where we will
		 * find another DEAD tuple is a fairly unusual corner case.)
		 */
		if (tupdead)
		{
			latestdead = offnum;
			FUNC3(htup,
												   &prstate->latestRemovedXid);
		}
		else if (!recent_dead)
			break;

		/*
		 * If the tuple is not HOT-updated, then we are at the end of this
		 * HOT-update chain.
		 */
		if (!FUNC8(htup))
			break;

		/* HOT implies it can't have moved to different partition */
		FUNC0(!FUNC6(htup));

		/*
		 * Advance to next chain member.
		 */
		FUNC0(FUNC16(&htup->t_ctid) ==
			   FUNC1(buffer));
		offnum = FUNC17(&htup->t_ctid);
		priorXmax = FUNC4(htup);
	}

	/*
	 * If we found a DEAD tuple in the chain, adjust the HOT chain so that all
	 * the DEAD tuples at the start of the chain are removed and the root line
	 * pointer is appropriately redirected.
	 */
	if (FUNC19(latestdead))
	{
		/*
		 * Mark as unused each intermediate item that we are able to remove
		 * from the chain.
		 *
		 * When the previous item is the last dead tuple seen, we are at the
		 * right candidate for redirection.
		 */
		for (i = 1; (i < nchain) && (chainitems[i - 1] != latestdead); i++)
		{
			FUNC30(prstate, chainitems[i]);
			ndeleted++;
		}

		/*
		 * If the root entry had been a normal tuple, we are deleting it, so
		 * count it in the result.  But changing a redirect (even to DEAD
		 * state) doesn't count.
		 */
		if (FUNC13(rootlp))
			ndeleted++;

		/*
		 * If the DEAD tuple is at the end of the chain, the entire chain is
		 * dead and the root line pointer can be marked dead.  Otherwise just
		 * redirect the root to the correct chain member.
		 */
		if (i >= nchain)
			FUNC27(prstate, rootoffnum);
		else
			FUNC29(prstate, rootoffnum, chainitems[i]);
	}
	else if (nchain < 2 && FUNC14(rootlp))
	{
		/*
		 * We found a redirect item that doesn't point to a valid follow-on
		 * item.  This can happen if the loop in heap_page_prune caused us to
		 * visit the dead successor of a redirect item before visiting the
		 * redirect item.  We can clean up by setting the redirect item to
		 * DEAD state.
		 */
		FUNC27(prstate, rootoffnum);
	}

	return ndeleted;
}