#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * ps_ExprContext; } ;
struct TYPE_7__ {int noCount; int /*<<< orphan*/  lstate; int /*<<< orphan*/ * subSlot; scalar_t__ position; void* count; scalar_t__ limitCount; void* offset; scalar_t__ limitOffset; TYPE_1__ ps; } ;
typedef  TYPE_2__ LimitState ;
typedef  int /*<<< orphan*/  ExprContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_ROW_COUNT_IN_LIMIT_CLAUSE ; 
 int /*<<< orphan*/  ERRCODE_INVALID_ROW_COUNT_IN_RESULT_OFFSET_CLAUSE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LIMIT_RESCAN ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC8(LimitState *node)
{
	ExprContext *econtext = node->ps.ps_ExprContext;
	Datum		val;
	bool		isNull;

	if (node->limitOffset)
	{
		val = FUNC1(node->limitOffset,
										econtext,
										&isNull);
		/* Interpret NULL offset as no offset */
		if (isNull)
			node->offset = 0;
		else
		{
			node->offset = FUNC0(val);
			if (node->offset < 0)
				FUNC4(ERROR,
						(FUNC5(ERRCODE_INVALID_ROW_COUNT_IN_RESULT_OFFSET_CLAUSE),
						 FUNC6("OFFSET must not be negative")));
		}
	}
	else
	{
		/* No OFFSET supplied */
		node->offset = 0;
	}

	if (node->limitCount)
	{
		val = FUNC1(node->limitCount,
										econtext,
										&isNull);
		/* Interpret NULL count as no count (LIMIT ALL) */
		if (isNull)
		{
			node->count = 0;
			node->noCount = true;
		}
		else
		{
			node->count = FUNC0(val);
			if (node->count < 0)
				FUNC4(ERROR,
						(FUNC5(ERRCODE_INVALID_ROW_COUNT_IN_LIMIT_CLAUSE),
						 FUNC6("LIMIT must not be negative")));
			node->noCount = false;
		}
	}
	else
	{
		/* No COUNT supplied */
		node->count = 0;
		node->noCount = true;
	}

	/* Reset position to start-of-scan */
	node->position = 0;
	node->subSlot = NULL;

	/* Set state-machine state */
	node->lstate = LIMIT_RESCAN;

	/*
	 * Notify child node about limit.  Note: think not to "optimize" by
	 * skipping ExecSetTupleBound if compute_tuples_needed returns < 0.  We
	 * must update the child node anyway, in case this is a rescan and the
	 * previous time we got a different result.
	 */
	FUNC2(FUNC3(node), FUNC7(node));
}