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
struct TYPE_3__ {scalar_t__ current_buf; int /*<<< orphan*/ * strategy; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ ReadBufferMode ;
typedef  TYPE_1__* BulkInsertState ;
typedef  scalar_t__ Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ InvalidBuffer ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 scalar_t__ RBM_ZERO_AND_CLEANUP_LOCK ; 
 scalar_t__ RBM_ZERO_AND_LOCK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static Buffer
FUNC5(Relation relation, BlockNumber targetBlock,
			 ReadBufferMode mode, BulkInsertState bistate)
{
	Buffer		buffer;

	/* If not bulk-insert, exactly like ReadBuffer */
	if (!bistate)
		return FUNC3(relation, MAIN_FORKNUM, targetBlock,
								  mode, NULL);

	/* If we have the desired block already pinned, re-pin and return it */
	if (bistate->current_buf != InvalidBuffer)
	{
		if (FUNC1(bistate->current_buf) == targetBlock)
		{
			/*
			 * Currently the LOCK variants are only used for extending
			 * relation, which should never reach this branch.
			 */
			FUNC0(mode != RBM_ZERO_AND_LOCK &&
				   mode != RBM_ZERO_AND_CLEANUP_LOCK);

			FUNC2(bistate->current_buf);
			return bistate->current_buf;
		}
		/* ... else drop the old buffer */
		FUNC4(bistate->current_buf);
		bistate->current_buf = InvalidBuffer;
	}

	/* Perform a read using the buffer strategy */
	buffer = FUNC3(relation, MAIN_FORKNUM, targetBlock,
								mode, bistate->strategy);

	/* Save the selected block as target for future inserts */
	FUNC2(buffer);
	bistate->current_buf = buffer;

	return buffer;
}