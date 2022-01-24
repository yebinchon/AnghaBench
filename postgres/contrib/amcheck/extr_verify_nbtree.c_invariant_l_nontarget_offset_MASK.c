#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
struct TYPE_9__ {int keysz; int /*<<< orphan*/ * scantid; int /*<<< orphan*/  heapkeyspace; int /*<<< orphan*/  pivotsearch; } ;
struct TYPE_8__ {int /*<<< orphan*/  rel; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  scalar_t__ IndexTuple ;
typedef  TYPE_1__ BtreeCheckState ;
typedef  int /*<<< orphan*/  BlockNumber ;
typedef  TYPE_2__* BTScanInsert ;
typedef  scalar_t__ BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,scalar_t__,int) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline bool
FUNC9(BtreeCheckState *state, BTScanInsert key,
							 BlockNumber nontargetblock, Page nontarget,
							 OffsetNumber upperbound)
{
	ItemId		itemid;
	int32		cmp;

	FUNC0(key->pivotsearch);

	/* Verify line pointer before checking tuple */
	itemid = FUNC6(state, nontargetblock, nontarget,
								  upperbound);
	cmp = FUNC8(state->rel, key, nontarget, upperbound);

	/* pg_upgrade'd indexes may legally have equal sibling tuples */
	if (!key->heapkeyspace)
		return cmp <= 0;

	/* See invariant_l_offset() for an explanation of this extra step */
	if (cmp == 0)
	{
		IndexTuple	child;
		int			uppnkeyatts;
		ItemPointer childheaptid;
		BTPageOpaque copaque;
		bool		nonpivot;

		child = (IndexTuple) FUNC5(nontarget, itemid);
		copaque = (BTPageOpaque) FUNC7(nontarget);
		nonpivot = FUNC4(copaque) && upperbound >= FUNC3(copaque);

		/* Get number of keys + heap TID for child/non-target item */
		uppnkeyatts = FUNC2(child, state->rel);
		childheaptid = FUNC1(state, child, nonpivot);

		/* Heap TID is tiebreaker key attribute */
		if (key->keysz == uppnkeyatts)
			return key->scantid == NULL && childheaptid != NULL;

		return key->keysz < uppnkeyatts;
	}

	return cmp < 0;
}