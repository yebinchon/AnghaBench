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
struct TYPE_4__ {int /*<<< orphan*/  bs_bdesc; int /*<<< orphan*/  bs_dtuple; int /*<<< orphan*/ * bs_rmAccess; scalar_t__ bs_currRangeStart; int /*<<< orphan*/  bs_pagesPerRange; int /*<<< orphan*/  bs_currentInsertBuf; scalar_t__ bs_numtuples; int /*<<< orphan*/  bs_irel; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  BrinRevmap ;
typedef  TYPE_1__ BrinBuildState ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int) ; 

__attribute__((used)) static BrinBuildState *
FUNC4(Relation idxRel, BrinRevmap *revmap,
						   BlockNumber pagesPerRange)
{
	BrinBuildState *state;

	state = FUNC3(sizeof(BrinBuildState));

	state->bs_irel = idxRel;
	state->bs_numtuples = 0;
	state->bs_currentInsertBuf = InvalidBuffer;
	state->bs_pagesPerRange = pagesPerRange;
	state->bs_currRangeStart = 0;
	state->bs_rmAccess = revmap;
	state->bs_bdesc = FUNC0(idxRel);
	state->bs_dtuple = FUNC2(state->bs_bdesc);

	FUNC1(state->bs_dtuple, state->bs_bdesc);

	return state;
}