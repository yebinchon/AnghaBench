#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* bs_dtuple; int /*<<< orphan*/  bs_bdesc; int /*<<< orphan*/  bs_irel; int /*<<< orphan*/  bs_currentInsertBuf; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_1__ BrinBuildState ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC9(BrinBuildState *state)
{
	/*
	 * Release the last index buffer used.  We might as well ensure that
	 * whatever free space remains in that page is available in FSM, too.
	 */
	if (!FUNC2(state->bs_currentInsertBuf))
	{
		Page		page;
		Size		freespace;
		BlockNumber blk;

		page = FUNC1(state->bs_currentInsertBuf);
		freespace = FUNC4(page);
		blk = FUNC0(state->bs_currentInsertBuf);
		FUNC6(state->bs_currentInsertBuf);
		FUNC5(state->bs_irel, blk, freespace);
		FUNC3(state->bs_irel, blk, blk + 1);
	}

	FUNC7(state->bs_bdesc);
	FUNC8(state->bs_dtuple);
	FUNC8(state);
}