#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_76__   TYPE_9__ ;
typedef  struct TYPE_75__   TYPE_8__ ;
typedef  struct TYPE_74__   TYPE_6__ ;
typedef  struct TYPE_73__   TYPE_5__ ;
typedef  struct TYPE_72__   TYPE_57__ ;
typedef  struct TYPE_71__   TYPE_4__ ;
typedef  struct TYPE_70__   TYPE_3__ ;
typedef  struct TYPE_69__   TYPE_2__ ;
typedef  struct TYPE_68__   TYPE_1__ ;
typedef  struct TYPE_67__   TYPE_12__ ;
typedef  struct TYPE_66__   TYPE_11__ ;
typedef  struct TYPE_65__   TYPE_10__ ;

/* Type definitions */
struct TYPE_69__ {int /*<<< orphan*/  nodeLabel; int /*<<< orphan*/  nodeN; } ;
struct TYPE_68__ {int nodeN; int levelAdd; void* restDatum; } ;
struct TYPE_70__ {TYPE_2__ addNode; TYPE_1__ matchNode; } ;
struct TYPE_74__ {int level; int hasPrefix; int nNodes; int resultType; TYPE_3__ result; int /*<<< orphan*/ * nodeLabels; int /*<<< orphan*/  prefixDatum; scalar_t__ allTheSame; void* leafDatum; void* datum; } ;
typedef  TYPE_6__ spgChooseOut ;
typedef  TYPE_6__ spgChooseIn ;
typedef  int /*<<< orphan*/  out ;
struct TYPE_76__ {int size; } ;
struct TYPE_72__ {scalar_t__ type; } ;
struct TYPE_73__ {int /*<<< orphan*/  longValuesOK; } ;
struct TYPE_71__ {scalar_t__ type; int attlen; } ;
struct TYPE_75__ {TYPE_57__ attLeafType; TYPE_5__ config; TYPE_4__ attType; } ;
struct TYPE_67__ {int /*<<< orphan*/ * rd_indcollation; } ;
struct TYPE_66__ {scalar_t__ blkno; scalar_t__ buffer; int node; int /*<<< orphan*/  offnum; int /*<<< orphan*/ * page; } ;
struct TYPE_65__ {scalar_t__ prefixSize; int nNodes; scalar_t__ allTheSame; } ;
typedef  TYPE_8__ SpGistState ;
typedef  TYPE_9__* SpGistLeafTuple ;
typedef  TYPE_10__* SpGistInnerTuple ;
typedef  TYPE_11__ SPPageDesc ;
typedef  TYPE_12__* Relation ;
typedef  int /*<<< orphan*/  ItemPointer ;
typedef  int /*<<< orphan*/  ItemIdData ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  void* Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FirstOffsetNumber ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,void*) ; 
 int GBUF_LEAF ; 
 int GBUF_NULLS ; 
 scalar_t__ InvalidBlockNumber ; 
 scalar_t__ InvalidBuffer ; 
 int /*<<< orphan*/  InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC10 (void*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC13 (TYPE_6__*) ; 
 void* FUNC14 (TYPE_12__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int SGDTSIZE ; 
 int /*<<< orphan*/  FUNC17 (TYPE_10__*,TYPE_8__*) ; 
 int SGLTHDRSZ ; 
 int /*<<< orphan*/  SPGIST_CHOOSE_PROC ; 
 int /*<<< orphan*/  SPGIST_COMPRESS_PROC ; 
 scalar_t__ SPGIST_NULL_BLKNO ; 
 int SPGIST_PAGE_CAPACITY ; 
 scalar_t__ SPGIST_ROOT_BLKNO ; 
 scalar_t__ FUNC18 (TYPE_12__*,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC19 (TYPE_57__*,void*) ; 
 int FUNC20 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_12__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_12__*,TYPE_8__*,TYPE_9__*,TYPE_11__*,TYPE_11__*,int,int) ; 
 int FUNC26 (TYPE_12__*,TYPE_8__*,TYPE_11__*,int*) ; 
 scalar_t__ FUNC27 (TYPE_12__*,TYPE_8__*,TYPE_11__*,TYPE_11__*,TYPE_9__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (char*) ; 
 int /*<<< orphan*/  FUNC32 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_12__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC34 (TYPE_12__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_12__*,TYPE_8__*,TYPE_11__*,TYPE_11__*,TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_9__*) ; 
 int FUNC38 () ; 
#define  spgAddNode 130 
 int /*<<< orphan*/  FUNC39 (TYPE_12__*,TYPE_8__*,TYPE_10__*,TYPE_11__*,TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC40 (TYPE_8__*,TYPE_10__*) ; 
 TYPE_9__* FUNC41 (TYPE_8__*,int /*<<< orphan*/ ,void*,int) ; 
#define  spgMatchNode 129 
 int /*<<< orphan*/  FUNC42 (TYPE_12__*,TYPE_8__*,TYPE_10__*,TYPE_11__*,TYPE_11__*,int) ; 
 int /*<<< orphan*/  FUNC43 (TYPE_12__*,TYPE_8__*,TYPE_10__*,TYPE_11__*,TYPE_6__*) ; 
#define  spgSplitTuple 128 

bool
FUNC44(Relation index, SpGistState *state,
			ItemPointer heapPtr, Datum datum, bool isnull)
{
	int			level = 0;
	Datum		leafDatum;
	int			leafSize;
	SPPageDesc	current,
				parent;
	FmgrInfo   *procinfo = NULL;

	/*
	 * Look up FmgrInfo of the user-defined choose function once, to save
	 * cycles in the loop below.
	 */
	if (!isnull)
		procinfo = FUNC34(index, 1, SPGIST_CHOOSE_PROC);

	/*
	 * Prepare the leaf datum to insert.
	 *
	 * If an optional "compress" method is provided, then call it to form the
	 * leaf datum from the input datum.  Otherwise store the input datum as
	 * is.  Since we don't use index_form_tuple in this AM, we have to make
	 * sure value to be inserted is not toasted; FormIndexDatum doesn't
	 * guarantee that.  But we assume the "compress" method to return an
	 * untoasted value.
	 */
	if (!isnull)
	{
		if (FUNC9(FUNC33(index, 1, SPGIST_COMPRESS_PROC)))
		{
			FmgrInfo   *compressProcinfo = NULL;

			compressProcinfo = FUNC34(index, 1, SPGIST_COMPRESS_PROC);
			leafDatum = FUNC5(compressProcinfo,
										  index->rd_indcollation[0],
										  datum);
		}
		else
		{
			FUNC0(state->attLeafType.type == state->attType.type);

			if (state->attType.attlen == -1)
				leafDatum = FUNC13(FUNC10(datum));
			else
				leafDatum = datum;
		}
	}
	else
		leafDatum = (Datum) 0;

	/*
	 * Compute space needed for a leaf tuple containing the given datum.
	 *
	 * If it isn't gonna fit, and the opclass can't reduce the datum size by
	 * suffixing, bail out now rather than getting into an endless loop.
	 */
	if (!isnull)
		leafSize = SGLTHDRSZ + sizeof(ItemIdData) +
			FUNC19(&state->attLeafType, leafDatum);
	else
		leafSize = SGDTSIZE + sizeof(ItemIdData);

	if (leafSize > SPGIST_PAGE_CAPACITY && !state->config.longValuesOK)
		FUNC29(ERROR,
				(FUNC30(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC32("index row size %zu exceeds maximum %zu for index \"%s\"",
						leafSize - sizeof(ItemIdData),
						SPGIST_PAGE_CAPACITY - sizeof(ItemIdData),
						FUNC15(index)),
				 FUNC31("Values larger than a buffer page cannot be indexed.")));

	/* Initialize "current" to the appropriate root page */
	current.blkno = isnull ? SPGIST_NULL_BLKNO : SPGIST_ROOT_BLKNO;
	current.buffer = InvalidBuffer;
	current.page = NULL;
	current.offnum = FirstOffsetNumber;
	current.node = -1;

	/* "parent" is invalid for the moment */
	parent.blkno = InvalidBlockNumber;
	parent.buffer = InvalidBuffer;
	parent.page = NULL;
	parent.offnum = InvalidOffsetNumber;
	parent.node = -1;

	for (;;)
	{
		bool		isNew = false;

		/*
		 * Bail out if query cancel is pending.  We must have this somewhere
		 * in the loop since a broken opclass could produce an infinite
		 * picksplit loop.
		 */
		FUNC3();

		if (current.blkno == InvalidBlockNumber)
		{
			/*
			 * Create a leaf page.  If leafSize is too large to fit on a page,
			 * we won't actually use the page yet, but it simplifies the API
			 * for doPickSplit to always have a leaf page at hand; so just
			 * quietly limit our request to a page size.
			 */
			current.buffer =
				FUNC18(index,
								GBUF_LEAF | (isnull ? GBUF_NULLS : 0),
								FUNC8(leafSize, SPGIST_PAGE_CAPACITY),
								&isNew);
			current.blkno = FUNC1(current.buffer);
		}
		else if (parent.buffer == InvalidBuffer)
		{
			/* we hold no parent-page lock, so no deadlock is possible */
			current.buffer = FUNC14(index, current.blkno);
			FUNC7(current.buffer, BUFFER_LOCK_EXCLUSIVE);
		}
		else if (current.blkno != parent.blkno)
		{
			/* descend to a new child page */
			current.buffer = FUNC14(index, current.blkno);

			/*
			 * Attempt to acquire lock on child page.  We must beware of
			 * deadlock against another insertion process descending from that
			 * page to our parent page (see README).  If we fail to get lock,
			 * abandon the insertion and tell our caller to start over.
			 *
			 * XXX this could be improved, because failing to get lock on a
			 * buffer is not proof of a deadlock situation; the lock might be
			 * held by a reader, or even just background writer/checkpointer
			 * process.  Perhaps it'd be worth retrying after sleeping a bit?
			 */
			if (!FUNC4(current.buffer))
			{
				FUNC16(current.buffer);
				FUNC24(parent.buffer);
				return false;
			}
		}
		else
		{
			/* inner tuple can be stored on the same page as parent one */
			current.buffer = parent.buffer;
		}
		current.page = FUNC2(current.buffer);

		/* should not arrive at a page of the wrong type */
		if (isnull ? !FUNC22(current.page) :
			FUNC22(current.page))
			FUNC28(ERROR, "SPGiST index page %u has wrong nulls flag",
				 current.blkno);

		if (FUNC21(current.page))
		{
			SpGistLeafTuple leafTuple;
			int			nToSplit,
						sizeToSplit;

			leafTuple = FUNC41(state, heapPtr, leafDatum, isnull);
			if (leafTuple->size + sizeof(ItemIdData) <=
				FUNC20(current.page, 1))
			{
				/* it fits on page, so insert it and we're done */
				FUNC25(index, state, leafTuple,
							 &current, &parent, isnull, isNew);
				break;
			}
			else if ((sizeToSplit =
					  FUNC26(index, state, &current,
										   &nToSplit)) < SPGIST_PAGE_CAPACITY / 2 &&
					 nToSplit < 64 &&
					 leafTuple->size + sizeof(ItemIdData) + sizeToSplit <= SPGIST_PAGE_CAPACITY)
			{
				/*
				 * the amount of data is pretty small, so just move the whole
				 * chain to another leaf page rather than splitting it.
				 */
				FUNC0(!isNew);
				FUNC36(index, state, &current, &parent, leafTuple, isnull);
				break;			/* we're done */
			}
			else
			{
				/* picksplit */
				if (FUNC27(index, state, &current, &parent,
								leafTuple, level, isnull, isNew))
					break;		/* doPickSplit installed new tuples */

				/* leaf tuple will not be inserted yet */
				FUNC37(leafTuple);

				/*
				 * current now describes new inner tuple, go insert into it
				 */
				FUNC0(!FUNC21(current.page));
				goto process_inner_tuple;
			}
		}
		else					/* non-leaf page */
		{
			/*
			 * Apply the opclass choose function to figure out how to insert
			 * the given datum into the current inner tuple.
			 */
			SpGistInnerTuple innerTuple;
			spgChooseIn in;
			spgChooseOut out;

			/*
			 * spgAddNode and spgSplitTuple cases will loop back to here to
			 * complete the insertion operation.  Just in case the choose
			 * function is broken and produces add or split requests
			 * repeatedly, check for query cancel.
			 */
	process_inner_tuple:
			FUNC3();

			innerTuple = (SpGistInnerTuple) FUNC11(current.page,
														FUNC12(current.page, current.offnum));

			in.datum = datum;
			in.leafDatum = leafDatum;
			in.level = level;
			in.allTheSame = innerTuple->allTheSame;
			in.hasPrefix = (innerTuple->prefixSize > 0);
			in.prefixDatum = FUNC17(innerTuple, state);
			in.nNodes = innerTuple->nNodes;
			in.nodeLabels = FUNC40(state, innerTuple);

			FUNC35(&out, 0, sizeof(out));

			if (!isnull)
			{
				/* use user-defined choose method */
				FUNC6(procinfo,
								  index->rd_indcollation[0],
								  FUNC13(&in),
								  FUNC13(&out));
			}
			else
			{
				/* force "match" action (to insert to random subnode) */
				out.resultType = spgMatchNode;
			}

			if (innerTuple->allTheSame)
			{
				/*
				 * It's not allowed to do an AddNode at an allTheSame tuple.
				 * Opclass must say "match", in which case we choose a random
				 * one of the nodes to descend into, or "split".
				 */
				if (out.resultType == spgAddNode)
					FUNC28(ERROR, "cannot add a node to an allTheSame inner tuple");
				else if (out.resultType == spgMatchNode)
					out.result.matchNode.nodeN = FUNC38() % innerTuple->nNodes;
			}

			switch (out.resultType)
			{
				case spgMatchNode:
					/* Descend to N'th child node */
					FUNC42(index, state, innerTuple,
									   &current, &parent,
									   out.result.matchNode.nodeN);
					/* Adjust level as per opclass request */
					level += out.result.matchNode.levelAdd;
					/* Replace leafDatum and recompute leafSize */
					if (!isnull)
					{
						leafDatum = out.result.matchNode.restDatum;
						leafSize = SGLTHDRSZ + sizeof(ItemIdData) +
							FUNC19(&state->attLeafType, leafDatum);
					}

					/*
					 * Loop around and attempt to insert the new leafDatum at
					 * "current" (which might reference an existing child
					 * tuple, or might be invalid to force us to find a new
					 * page for the tuple).
					 *
					 * Note: if the opclass sets longValuesOK, we rely on the
					 * choose function to eventually shorten the leafDatum
					 * enough to fit on a page.  We could add a test here to
					 * complain if the datum doesn't get visibly shorter each
					 * time, but that could get in the way of opclasses that
					 * "simplify" datums in a way that doesn't necessarily
					 * lead to physical shortening on every cycle.
					 */
					break;
				case spgAddNode:
					/* AddNode is not sensible if nodes don't have labels */
					if (in.nodeLabels == NULL)
						FUNC28(ERROR, "cannot add a node to an inner tuple without node labels");
					/* Add node to inner tuple, per request */
					FUNC39(index, state, innerTuple,
									 &current, &parent,
									 out.result.addNode.nodeN,
									 out.result.addNode.nodeLabel);

					/*
					 * Retry insertion into the enlarged node.  We assume that
					 * we'll get a MatchNode result this time.
					 */
					goto process_inner_tuple;
					break;
				case spgSplitTuple:
					/* Split inner tuple, per request */
					FUNC43(index, state, innerTuple,
									   &current, &out);

					/* Retry insertion into the split node */
					goto process_inner_tuple;
					break;
				default:
					FUNC28(ERROR, "unrecognized SPGiST choose result: %d",
						 (int) out.resultType);
					break;
			}
		}
	}							/* end loop */

	/*
	 * Release any buffers we're still holding.  Beware of possibility that
	 * current and parent reference same buffer.
	 */
	if (current.buffer != InvalidBuffer)
	{
		FUNC23(index, current.buffer);
		FUNC24(current.buffer);
	}
	if (parent.buffer != InvalidBuffer &&
		parent.buffer != current.buffer)
	{
		FUNC23(index, parent.buffer);
		FUNC24(parent.buffer);
	}

	return true;
}