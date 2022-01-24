#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int int64 ;
typedef  TYPE_4__* WindowObject ;
struct TYPE_9__ {TYPE_1__* ps_ExprContext; } ;
struct TYPE_10__ {TYPE_2__ ps; } ;
struct TYPE_12__ {int spooled_rows; int /*<<< orphan*/  buffer; TYPE_3__ ss; } ;
typedef  TYPE_5__ WindowAggState ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_11__ {int markpos; int seekpos; int /*<<< orphan*/  readptr; TYPE_5__* winstate; } ;
struct TYPE_8__ {int /*<<< orphan*/  ecxt_per_query_memory; } ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static bool
FUNC9(WindowObject winobj, int64 pos, TupleTableSlot *slot)
{
	WindowAggState *winstate = winobj->winstate;
	MemoryContext oldcontext;

	/* often called repeatedly in a row */
	FUNC1();

	/* Don't allow passing -1 to spool_tuples here */
	if (pos < 0)
		return false;

	/* If necessary, fetch the tuple into the spool */
	FUNC4(winstate, pos);

	if (pos >= winstate->spooled_rows)
		return false;

	if (pos < winobj->markpos)
		FUNC3(ERROR, "cannot fetch row before WindowObject's mark position");

	oldcontext = FUNC2(winstate->ss.ps.ps_ExprContext->ecxt_per_query_memory);

	FUNC7(winstate->buffer, winobj->readptr);

	/*
	 * Advance or rewind until we are within one tuple of the one we want.
	 */
	if (winobj->seekpos < pos - 1)
	{
		if (!FUNC8(winstate->buffer,
								   pos - 1 - winobj->seekpos,
								   true))
			FUNC3(ERROR, "unexpected end of tuplestore");
		winobj->seekpos = pos - 1;
	}
	else if (winobj->seekpos > pos + 1)
	{
		if (!FUNC8(winstate->buffer,
								   winobj->seekpos - (pos + 1),
								   false))
			FUNC3(ERROR, "unexpected end of tuplestore");
		winobj->seekpos = pos + 1;
	}
	else if (winobj->seekpos == pos)
	{
		/*
		 * There's no API to refetch the tuple at the current position.  We
		 * have to move one tuple forward, and then one backward.  (We don't
		 * do it the other way because we might try to fetch the row before
		 * our mark, which isn't allowed.)  XXX this case could stand to be
		 * optimized.
		 */
		FUNC5(winstate->buffer, true);
		winobj->seekpos++;
	}

	/*
	 * Now we should be on the tuple immediately before or after the one we
	 * want, so just fetch forwards or backwards as appropriate.
	 */
	if (winobj->seekpos > pos)
	{
		if (!FUNC6(winstate->buffer, false, true, slot))
			FUNC3(ERROR, "unexpected end of tuplestore");
		winobj->seekpos--;
	}
	else
	{
		if (!FUNC6(winstate->buffer, true, true, slot))
			FUNC3(ERROR, "unexpected end of tuplestore");
		winobj->seekpos++;
	}

	FUNC0(winobj->seekpos == pos);

	FUNC2(oldcontext);

	return true;
}