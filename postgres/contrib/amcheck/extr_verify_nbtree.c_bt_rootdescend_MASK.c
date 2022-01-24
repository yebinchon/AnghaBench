#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int bounds_valid; int /*<<< orphan*/  buf; TYPE_2__* itup_key; int /*<<< orphan*/  itemsz; int /*<<< orphan*/  itup; } ;
struct TYPE_11__ {int /*<<< orphan*/ * scantid; scalar_t__ heapkeyspace; } ;
struct TYPE_10__ {int /*<<< orphan*/  rel; scalar_t__ rootdescend; scalar_t__ readonly; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  IndexTuple ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  TYPE_1__ BtreeCheckState ;
typedef  int /*<<< orphan*/  BTStack ;
typedef  TYPE_2__* BTScanInsert ;
typedef  TYPE_3__ BTInsertStateData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BT_READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 

__attribute__((used)) static bool
FUNC13(BtreeCheckState *state, IndexTuple itup)
{
	BTScanInsert key;
	BTStack		stack;
	Buffer		lbuf;
	bool		exists;

	key = FUNC9(state->rel, itup);
	FUNC0(key->heapkeyspace && key->scantid != NULL);

	/*
	 * Search from root.
	 *
	 * Ideally, we would arrange to only move right within _bt_search() when
	 * an interrupted page split is detected (i.e. when the incomplete split
	 * bit is found to be set), but for now we accept the possibility that
	 * that could conceal an inconsistency.
	 */
	FUNC0(state->readonly && state->rootdescend);
	exists = false;
	stack = FUNC11(state->rel, key, &lbuf, BT_READ, NULL);

	if (FUNC2(lbuf))
	{
		BTInsertStateData insertstate;
		OffsetNumber offnum;
		Page		page;

		insertstate.itup = itup;
		insertstate.itemsz = FUNC4(FUNC3(itup));
		insertstate.itup_key = key;
		insertstate.bounds_valid = false;
		insertstate.buf = lbuf;

		/* Get matching tuple on leaf page */
		offnum = FUNC6(state->rel, &insertstate);
		/* Compare first >= matching item on leaf page, if any */
		page = FUNC1(lbuf);
		if (offnum <= FUNC5(page) &&
			FUNC7(state->rel, key, page, offnum) == 0)
			exists = true;
		FUNC10(state->rel, lbuf);
	}

	FUNC8(stack);
	FUNC12(key);

	return exists;
}