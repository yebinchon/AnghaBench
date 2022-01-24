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
struct TYPE_3__ {int /*<<< orphan*/  rel; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_1__ BtreeCheckState ;
typedef  int /*<<< orphan*/  BlockNumber ;
typedef  int /*<<< orphan*/  BTPageOpaqueData ;

/* Variables and functions */
 int BLCKSZ ; 
 int /*<<< orphan*/  ERRCODE_INDEX_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ItemId
FUNC11(BtreeCheckState *state, BlockNumber block, Page page,
					 OffsetNumber offset)
{
	ItemId		itemid = FUNC5(page, offset);

	if (FUNC2(itemid) + FUNC1(itemid) >
		BLCKSZ - sizeof(BTPageOpaqueData))
		FUNC7(ERROR,
				(FUNC8(ERRCODE_INDEX_CORRUPTED),
				 FUNC10("line pointer points past end of tuple space in index \"%s\"",
						FUNC6(state->rel)),
				 FUNC9("Index tid=(%u,%u) lp_off=%u, lp_len=%u lp_flags=%u.",
									block, offset, FUNC2(itemid),
									FUNC1(itemid),
									FUNC0(itemid))));

	/*
	 * Verify that line pointer isn't LP_REDIRECT or LP_UNUSED, since nbtree
	 * never uses either.  Verify that line pointer has storage, too, since
	 * even LP_DEAD items should within nbtree.
	 */
	if (FUNC3(itemid) || !FUNC4(itemid) ||
		FUNC1(itemid) == 0)
		FUNC7(ERROR,
				(FUNC8(ERRCODE_INDEX_CORRUPTED),
				 FUNC10("invalid line pointer storage in index \"%s\"",
						FUNC6(state->rel)),
				 FUNC9("Index tid=(%u,%u) lp_off=%u, lp_len=%u lp_flags=%u.",
									block, offset, FUNC2(itemid),
									FUNC1(itemid),
									FUNC0(itemid))));

	return itemid;
}