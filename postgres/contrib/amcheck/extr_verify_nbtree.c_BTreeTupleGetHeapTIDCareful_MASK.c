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
struct TYPE_3__ {int /*<<< orphan*/  rel; int /*<<< orphan*/  targetblock; } ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  int /*<<< orphan*/  IndexTuple ;
typedef  TYPE_1__ BtreeCheckState ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INDEX_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline ItemPointer
FUNC5(BtreeCheckState *state, IndexTuple itup,
							bool nonpivot)
{
	ItemPointer result = FUNC0(itup);
	BlockNumber targetblock = state->targetblock;

	if (result == NULL && nonpivot)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_INDEX_CORRUPTED),
				 FUNC4("block %u or its right sibling block or child block in index \"%s\" contains non-pivot tuple that lacks a heap TID",
						targetblock, FUNC1(state->rel))));

	return result;
}