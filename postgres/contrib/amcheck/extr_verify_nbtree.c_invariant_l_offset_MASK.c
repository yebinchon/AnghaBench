#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
struct TYPE_11__ {int keysz; int /*<<< orphan*/ * scantid; int /*<<< orphan*/  heapkeyspace; int /*<<< orphan*/  pivotsearch; } ;
struct TYPE_10__ {int /*<<< orphan*/  rel; int /*<<< orphan*/  target; int /*<<< orphan*/  targetblock; } ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  scalar_t__ IndexTuple ;
typedef  TYPE_1__ BtreeCheckState ;
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
 int FUNC9 (TYPE_1__*,TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static inline bool
FUNC10(BtreeCheckState *state, BTScanInsert key,
				   OffsetNumber upperbound)
{
	ItemId		itemid;
	int32		cmp;

	FUNC0(key->pivotsearch);

	/* Verify line pointer before checking tuple */
	itemid = FUNC6(state, state->targetblock, state->target,
								  upperbound);
	/* pg_upgrade'd indexes may legally have equal sibling tuples */
	if (!key->heapkeyspace)
		return FUNC9(state, key, upperbound);

	cmp = FUNC8(state->rel, key, state->target, upperbound);

	/*
	 * _bt_compare() is capable of determining that a scankey with a
	 * filled-out attribute is greater than pivot tuples where the comparison
	 * is resolved at a truncated attribute (value of attribute in pivot is
	 * minus infinity).  However, it is not capable of determining that a
	 * scankey is _less than_ a tuple on the basis of a comparison resolved at
	 * _scankey_ minus infinity attribute.  Complete an extra step to simulate
	 * having minus infinity values for omitted scankey attribute(s).
	 */
	if (cmp == 0)
	{
		BTPageOpaque topaque;
		IndexTuple	ritup;
		int			uppnkeyatts;
		ItemPointer rheaptid;
		bool		nonpivot;

		ritup = (IndexTuple) FUNC5(state->target, itemid);
		topaque = (BTPageOpaque) FUNC7(state->target);
		nonpivot = FUNC4(topaque) && upperbound >= FUNC3(topaque);

		/* Get number of keys + heap TID for item to the right */
		uppnkeyatts = FUNC2(ritup, state->rel);
		rheaptid = FUNC1(state, ritup, nonpivot);

		/* Heap TID is tiebreaker key attribute */
		if (key->keysz == uppnkeyatts)
			return key->scantid == NULL && rheaptid != NULL;

		return key->keysz < uppnkeyatts;
	}

	return cmp < 0;
}