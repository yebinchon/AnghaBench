#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64 ;
typedef  TYPE_3__* WindowObject ;
struct TYPE_15__ {TYPE_5__* ps_ExprContext; } ;
struct TYPE_16__ {TYPE_1__ ps; } ;
struct TYPE_18__ {int frameOptions; scalar_t__ frameheadpos; scalar_t__ groupheadpos; scalar_t__ currentpos; scalar_t__ frametailpos; scalar_t__ grouptailpos; int /*<<< orphan*/ * temp_slot_1; TYPE_2__ ss; } ;
typedef  TYPE_4__ WindowAggState ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_19__ {int /*<<< orphan*/ * ecxt_outertuple; } ;
struct TYPE_17__ {int /*<<< orphan*/  argstates; TYPE_4__* winstate; } ;
typedef  int /*<<< orphan*/  ExprState ;
typedef  TYPE_5__ ExprContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_5__*,int*) ; 
#define  FRAMEOPTION_EXCLUDE_CURRENT_ROW 133 
#define  FRAMEOPTION_EXCLUDE_GROUP 132 
#define  FRAMEOPTION_EXCLUDE_TIES 131 
 int FRAMEOPTION_EXCLUSION ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
#define  WINDOW_SEEK_CURRENT 130 
#define  WINDOW_SEEK_HEAD 129 
#define  WINDOW_SEEK_TAIL 128 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ *) ; 

Datum
FUNC13(WindowObject winobj, int argno,
					 int relpos, int seektype, bool set_mark,
					 bool *isnull, bool *isout)
{
	WindowAggState *winstate;
	ExprContext *econtext;
	TupleTableSlot *slot;
	int64		abs_pos;
	int64		mark_pos;

	FUNC0(FUNC5(winobj));
	winstate = winobj->winstate;
	econtext = winstate->ss.ps.ps_ExprContext;
	slot = winstate->temp_slot_1;

	switch (seektype)
	{
		case WINDOW_SEEK_CURRENT:
			FUNC6(ERROR, "WINDOW_SEEK_CURRENT is not supported for WinGetFuncArgInFrame");
			abs_pos = mark_pos = 0; /* keep compiler quiet */
			break;
		case WINDOW_SEEK_HEAD:
			/* rejecting relpos < 0 is easy and simplifies code below */
			if (relpos < 0)
				goto out_of_frame;
			FUNC9(winstate);
			abs_pos = winstate->frameheadpos + relpos;
			mark_pos = abs_pos;

			/*
			 * Account for exclusion option if one is active, but advance only
			 * abs_pos not mark_pos.  This prevents changes of the current
			 * row's peer group from resulting in trying to fetch a row before
			 * some previous mark position.
			 *
			 * Note that in some corner cases such as current row being
			 * outside frame, these calculations are theoretically too simple,
			 * but it doesn't matter because we'll end up deciding the row is
			 * out of frame.  We do not attempt to avoid fetching rows past
			 * end of frame; that would happen in some cases anyway.
			 */
			switch (winstate->frameOptions & FRAMEOPTION_EXCLUSION)
			{
				case 0:
					/* no adjustment needed */
					break;
				case FRAMEOPTION_EXCLUDE_CURRENT_ROW:
					if (abs_pos >= winstate->currentpos &&
						winstate->currentpos >= winstate->frameheadpos)
						abs_pos++;
					break;
				case FRAMEOPTION_EXCLUDE_GROUP:
					FUNC11(winstate);
					if (abs_pos >= winstate->groupheadpos &&
						winstate->grouptailpos > winstate->frameheadpos)
					{
						int64		overlapstart = FUNC2(winstate->groupheadpos,
													   winstate->frameheadpos);

						abs_pos += winstate->grouptailpos - overlapstart;
					}
					break;
				case FRAMEOPTION_EXCLUDE_TIES:
					FUNC11(winstate);
					if (abs_pos >= winstate->groupheadpos &&
						winstate->grouptailpos > winstate->frameheadpos)
					{
						int64		overlapstart = FUNC2(winstate->groupheadpos,
													   winstate->frameheadpos);

						if (abs_pos == overlapstart)
							abs_pos = winstate->currentpos;
						else
							abs_pos += winstate->grouptailpos - overlapstart - 1;
					}
					break;
				default:
					FUNC6(ERROR, "unrecognized frame option state: 0x%x",
						 winstate->frameOptions);
					break;
			}
			break;
		case WINDOW_SEEK_TAIL:
			/* rejecting relpos > 0 is easy and simplifies code below */
			if (relpos > 0)
				goto out_of_frame;
			FUNC10(winstate);
			abs_pos = winstate->frametailpos - 1 + relpos;

			/*
			 * Account for exclusion option if one is active.  If there is no
			 * exclusion, we can safely set the mark at the accessed row.  But
			 * if there is, we can only mark the frame start, because we can't
			 * be sure how far back in the frame the exclusion might cause us
			 * to fetch in future.  Furthermore, we have to actually check
			 * against frameheadpos here, since it's unsafe to try to fetch a
			 * row before frame start if the mark might be there already.
			 */
			switch (winstate->frameOptions & FRAMEOPTION_EXCLUSION)
			{
				case 0:
					/* no adjustment needed */
					mark_pos = abs_pos;
					break;
				case FRAMEOPTION_EXCLUDE_CURRENT_ROW:
					if (abs_pos <= winstate->currentpos &&
						winstate->currentpos < winstate->frametailpos)
						abs_pos--;
					FUNC9(winstate);
					if (abs_pos < winstate->frameheadpos)
						goto out_of_frame;
					mark_pos = winstate->frameheadpos;
					break;
				case FRAMEOPTION_EXCLUDE_GROUP:
					FUNC11(winstate);
					if (abs_pos < winstate->grouptailpos &&
						winstate->groupheadpos < winstate->frametailpos)
					{
						int64		overlapend = FUNC3(winstate->grouptailpos,
													 winstate->frametailpos);

						abs_pos -= overlapend - winstate->groupheadpos;
					}
					FUNC9(winstate);
					if (abs_pos < winstate->frameheadpos)
						goto out_of_frame;
					mark_pos = winstate->frameheadpos;
					break;
				case FRAMEOPTION_EXCLUDE_TIES:
					FUNC11(winstate);
					if (abs_pos < winstate->grouptailpos &&
						winstate->groupheadpos < winstate->frametailpos)
					{
						int64		overlapend = FUNC3(winstate->grouptailpos,
													 winstate->frametailpos);

						if (abs_pos == overlapend - 1)
							abs_pos = winstate->currentpos;
						else
							abs_pos -= overlapend - 1 - winstate->groupheadpos;
					}
					FUNC9(winstate);
					if (abs_pos < winstate->frameheadpos)
						goto out_of_frame;
					mark_pos = winstate->frameheadpos;
					break;
				default:
					FUNC6(ERROR, "unrecognized frame option state: 0x%x",
						 winstate->frameOptions);
					mark_pos = 0;	/* keep compiler quiet */
					break;
			}
			break;
		default:
			FUNC6(ERROR, "unrecognized window seek type: %d", seektype);
			abs_pos = mark_pos = 0; /* keep compiler quiet */
			break;
	}

	if (!FUNC12(winobj, abs_pos, slot))
		goto out_of_frame;

	/* The code above does not detect all out-of-frame cases, so check */
	if (FUNC8(winstate, abs_pos, slot) <= 0)
		goto out_of_frame;

	if (isout)
		*isout = false;
	if (set_mark)
		FUNC4(winobj, mark_pos);
	econtext->ecxt_outertuple = slot;
	return FUNC1((ExprState *) FUNC7(winobj->argstates, argno),
						econtext, isnull);

out_of_frame:
	if (isout)
		*isout = true;
	*isnull = true;
	return (Datum) 0;
}