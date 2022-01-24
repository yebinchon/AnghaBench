#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ newitemoff; int newitemsz; int /*<<< orphan*/  rel; int /*<<< orphan*/  page; int /*<<< orphan*/  is_leaf; } ;
struct TYPE_9__ {scalar_t__ firstoldonright; int /*<<< orphan*/  newitemonleft; } ;
typedef  TYPE_1__ SplitPoint ;
typedef  int /*<<< orphan*/  ItemIdData ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  scalar_t__ IndexTuple ;
typedef  TYPE_2__ FindSplitData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static inline int
FUNC7(FindSplitData *state, SplitPoint *split)
{
	IndexTuple	lastleftuple;
	IndexTuple	firstrighttuple;

	if (!state->is_leaf)
	{
		ItemId		itemid;

		if (!split->newitemonleft &&
			split->firstoldonright == state->newitemoff)
			return state->newitemsz;

		itemid = FUNC3(state->page, split->firstoldonright);

		return FUNC2(FUNC1(itemid)) + sizeof(ItemIdData);
	}

	lastleftuple = FUNC6(state, split);
	firstrighttuple = FUNC5(state, split);

	FUNC0(lastleftuple != firstrighttuple);
	return FUNC4(state->rel, lastleftuple, firstrighttuple);
}