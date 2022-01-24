#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64 ;
struct TYPE_10__ {TYPE_1__* ps_ExprContext; scalar_t__ plan; } ;
struct TYPE_11__ {int /*<<< orphan*/  ss_ScanTupleSlot; TYPE_2__ ps; } ;
struct TYPE_12__ {int frameOptions; int frametail_valid; int frametailpos; int spooled_rows; int currentpos; scalar_t__ currentgroup; scalar_t__ frametailgroup; int /*<<< orphan*/  temp_slot_2; int /*<<< orphan*/  frametail_slot; int /*<<< orphan*/  buffer; int /*<<< orphan*/  frametail_ptr; int /*<<< orphan*/  endOffsetValue; int /*<<< orphan*/  inRangeColl; int /*<<< orphan*/  endInRangeFunc; scalar_t__ inRangeNullsFirst; TYPE_3__ ss; int /*<<< orphan*/  inRangeAsc; } ;
typedef  TYPE_4__ WindowAggState ;
struct TYPE_13__ {int ordNumCols; int* ordColIdx; } ;
typedef  TYPE_5__ WindowAgg ;
struct TYPE_9__ {int /*<<< orphan*/  ecxt_per_query_memory; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FRAMEOPTION_END_CURRENT_ROW ; 
 int FRAMEOPTION_END_OFFSET ; 
 int FRAMEOPTION_END_OFFSET_PRECEDING ; 
 int FRAMEOPTION_END_UNBOUNDED_FOLLOWING ; 
 int FRAMEOPTION_GROUPS ; 
 int FRAMEOPTION_RANGE ; 
 int FRAMEOPTION_ROWS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(WindowAggState *winstate)
{
	WindowAgg  *node = (WindowAgg *) winstate->ss.ps.plan;
	int			frameOptions = winstate->frameOptions;
	MemoryContext oldcontext;

	if (winstate->frametail_valid)
		return;					/* already known for current row */

	/* We may be called in a short-lived context */
	oldcontext = FUNC7(winstate->ss.ps.ps_ExprContext->ecxt_per_query_memory);

	if (frameOptions & FRAMEOPTION_END_UNBOUNDED_FOLLOWING)
	{
		/* In UNBOUNDED FOLLOWING mode, all partition rows are in frame */
		FUNC12(winstate, -1);
		winstate->frametailpos = winstate->spooled_rows;
		winstate->frametail_valid = true;
	}
	else if (frameOptions & FRAMEOPTION_END_CURRENT_ROW)
	{
		if (frameOptions & FRAMEOPTION_ROWS)
		{
			/* In ROWS mode, exactly the rows up to current are in frame */
			winstate->frametailpos = winstate->currentpos + 1;
			winstate->frametail_valid = true;
		}
		else if (frameOptions & (FRAMEOPTION_RANGE | FRAMEOPTION_GROUPS))
		{
			/* If no ORDER BY, all rows are peers with each other */
			if (node->ordNumCols == 0)
			{
				FUNC12(winstate, -1);
				winstate->frametailpos = winstate->spooled_rows;
				winstate->frametail_valid = true;
				FUNC7(oldcontext);
				return;
			}

			/*
			 * In RANGE or GROUPS END_CURRENT_ROW mode, frame end is the last
			 * row that is a peer of current row, frame tail is the row after
			 * that (if any).  We keep a copy of the last-known frame tail row
			 * in frametail_slot, and advance as necessary.  Note that if we
			 * reach end of partition, we will leave frametailpos = end+1 and
			 * frametail_slot empty.
			 */
			FUNC14(winstate->buffer,
										   winstate->frametail_ptr);
			if (winstate->frametailpos == 0 &&
				FUNC8(winstate->frametail_slot))
			{
				/* fetch first row into frametail_slot, if we didn't already */
				if (!FUNC13(winstate->buffer, true, true,
											 winstate->frametail_slot))
					FUNC10(ERROR, "unexpected end of tuplestore");
			}

			while (!FUNC8(winstate->frametail_slot))
			{
				if (winstate->frametailpos > winstate->currentpos &&
					!FUNC9(winstate, winstate->frametail_slot,
							   winstate->ss.ss_ScanTupleSlot))
					break;		/* this row is the frame tail */
				/* Note we advance frametailpos even if the fetch fails */
				winstate->frametailpos++;
				FUNC12(winstate, winstate->frametailpos);
				if (!FUNC13(winstate->buffer, true, true,
											 winstate->frametail_slot))
					break;		/* end of partition */
			}
			winstate->frametail_valid = true;
		}
		else
			FUNC0(false);
	}
	else if (frameOptions & FRAMEOPTION_END_OFFSET)
	{
		if (frameOptions & FRAMEOPTION_ROWS)
		{
			/* In ROWS mode, bound is physically n before/after current */
			int64		offset = FUNC3(winstate->endOffsetValue);

			if (frameOptions & FRAMEOPTION_END_OFFSET_PRECEDING)
				offset = -offset;

			winstate->frametailpos = winstate->currentpos + offset + 1;
			/* smallest allowable value of frametailpos is 0 */
			if (winstate->frametailpos < 0)
				winstate->frametailpos = 0;
			else if (winstate->frametailpos > winstate->currentpos + 1)
			{
				/* make sure frametailpos is not past end of partition */
				FUNC12(winstate, winstate->frametailpos - 1);
				if (winstate->frametailpos > winstate->spooled_rows)
					winstate->frametailpos = winstate->spooled_rows;
			}
			winstate->frametail_valid = true;
		}
		else if (frameOptions & FRAMEOPTION_RANGE)
		{
			/*
			 * In RANGE END_OFFSET mode, frame end is the last row that
			 * satisfies the in_range constraint relative to the current row,
			 * frame tail is the row after that (if any).  We keep a copy of
			 * the last-known frame tail row in frametail_slot, and advance as
			 * necessary.  Note that if we reach end of partition, we will
			 * leave frametailpos = end+1 and frametail_slot empty.
			 */
			int			sortCol = node->ordColIdx[0];
			bool		sub,
						less;

			/* We must have an ordering column */
			FUNC0(node->ordNumCols == 1);

			/* Precompute flags for in_range checks */
			if (frameOptions & FRAMEOPTION_END_OFFSET_PRECEDING)
				sub = true;		/* subtract endOffset from current row */
			else
				sub = false;	/* add it */
			less = true;		/* normally, we want frame tail <= sum */
			/* If sort order is descending, flip both flags */
			if (!winstate->inRangeAsc)
			{
				sub = !sub;
				less = false;
			}

			FUNC14(winstate->buffer,
										   winstate->frametail_ptr);
			if (winstate->frametailpos == 0 &&
				FUNC8(winstate->frametail_slot))
			{
				/* fetch first row into frametail_slot, if we didn't already */
				if (!FUNC13(winstate->buffer, true, true,
											 winstate->frametail_slot))
					FUNC10(ERROR, "unexpected end of tuplestore");
			}

			while (!FUNC8(winstate->frametail_slot))
			{
				Datum		tailval,
							currval;
				bool		tailisnull,
							currisnull;

				tailval = FUNC11(winstate->frametail_slot, sortCol,
									   &tailisnull);
				currval = FUNC11(winstate->ss.ss_ScanTupleSlot, sortCol,
									   &currisnull);
				if (tailisnull || currisnull)
				{
					/* order of the rows depends only on nulls_first */
					if (winstate->inRangeNullsFirst)
					{
						/* advance tail if tail is null or curr is not */
						if (!tailisnull)
							break;
					}
					else
					{
						/* advance tail if tail is not null or curr is null */
						if (!currisnull)
							break;
					}
				}
				else
				{
					if (!FUNC2(FUNC6(&winstate->endInRangeFunc,
														winstate->inRangeColl,
														tailval,
														currval,
														winstate->endOffsetValue,
														FUNC1(sub),
														FUNC1(less))))
						break;	/* this row is the correct frame tail */
				}
				/* Note we advance frametailpos even if the fetch fails */
				winstate->frametailpos++;
				FUNC12(winstate, winstate->frametailpos);
				if (!FUNC13(winstate->buffer, true, true,
											 winstate->frametail_slot))
					break;		/* end of partition */
			}
			winstate->frametail_valid = true;
		}
		else if (frameOptions & FRAMEOPTION_GROUPS)
		{
			/*
			 * In GROUPS END_OFFSET mode, frame end is the last row of the
			 * last peer group whose number satisfies the offset constraint,
			 * and frame tail is the row after that (if any).  We keep a copy
			 * of the last-known frame tail row in frametail_slot, and advance
			 * as necessary.  Note that if we reach end of partition, we will
			 * leave frametailpos = end+1 and frametail_slot empty.
			 */
			int64		offset = FUNC3(winstate->endOffsetValue);
			int64		maxtailgroup;

			if (frameOptions & FRAMEOPTION_END_OFFSET_PRECEDING)
				maxtailgroup = winstate->currentgroup - offset;
			else
				maxtailgroup = winstate->currentgroup + offset;

			FUNC14(winstate->buffer,
										   winstate->frametail_ptr);
			if (winstate->frametailpos == 0 &&
				FUNC8(winstate->frametail_slot))
			{
				/* fetch first row into frametail_slot, if we didn't already */
				if (!FUNC13(winstate->buffer, true, true,
											 winstate->frametail_slot))
					FUNC10(ERROR, "unexpected end of tuplestore");
			}

			while (!FUNC8(winstate->frametail_slot))
			{
				if (winstate->frametailgroup > maxtailgroup)
					break;		/* this row is the correct frame tail */
				FUNC5(winstate->temp_slot_2, winstate->frametail_slot);
				/* Note we advance frametailpos even if the fetch fails */
				winstate->frametailpos++;
				FUNC12(winstate, winstate->frametailpos);
				if (!FUNC13(winstate->buffer, true, true,
											 winstate->frametail_slot))
					break;		/* end of partition */
				if (!FUNC9(winstate, winstate->temp_slot_2,
							   winstate->frametail_slot))
					winstate->frametailgroup++;
			}
			FUNC4(winstate->temp_slot_2);
			winstate->frametail_valid = true;
		}
		else
			FUNC0(false);
	}
	else
		FUNC0(false);

	FUNC7(oldcontext);
}