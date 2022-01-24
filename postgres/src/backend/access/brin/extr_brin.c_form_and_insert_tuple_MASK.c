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
struct TYPE_3__ {int /*<<< orphan*/  bs_numtuples; int /*<<< orphan*/  bs_currRangeStart; int /*<<< orphan*/  bs_currentInsertBuf; int /*<<< orphan*/  bs_rmAccess; int /*<<< orphan*/  bs_pagesPerRange; int /*<<< orphan*/  bs_irel; int /*<<< orphan*/  bs_dtuple; int /*<<< orphan*/  bs_bdesc; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  BrinTuple ;
typedef  TYPE_1__ BrinBuildState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(BrinBuildState *state)
{
	BrinTuple  *tup;
	Size		size;

	tup = FUNC1(state->bs_bdesc, state->bs_currRangeStart,
						  state->bs_dtuple, &size);
	FUNC0(state->bs_irel, state->bs_pagesPerRange, state->bs_rmAccess,
				  &state->bs_currentInsertBuf, state->bs_currRangeStart,
				  tup, size);
	state->bs_numtuples++;

	FUNC2(tup);
}