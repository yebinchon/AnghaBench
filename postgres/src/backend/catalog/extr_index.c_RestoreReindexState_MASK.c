#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int numPendingReindexedIndexes; int /*<<< orphan*/ * pendingReindexedIndexes; int /*<<< orphan*/  currentlyReindexedIndex; int /*<<< orphan*/  currentlyReindexedHeap; } ;
typedef  TYPE_1__ SerializedReindexState ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  currentlyReindexedHeap ; 
 int /*<<< orphan*/  currentlyReindexedIndex ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ pendingReindexedIndexes ; 

void
FUNC3(void *reindexstate)
{
	SerializedReindexState *sistate = (SerializedReindexState *) reindexstate;
	int			c = 0;
	MemoryContext oldcontext;

	currentlyReindexedHeap = sistate->currentlyReindexedHeap;
	currentlyReindexedIndex = sistate->currentlyReindexedIndex;

	FUNC0(pendingReindexedIndexes == NIL);
	oldcontext = FUNC1(TopMemoryContext);
	for (c = 0; c < sistate->numPendingReindexedIndexes; ++c)
		pendingReindexedIndexes =
			FUNC2(pendingReindexedIndexes,
						sistate->pendingReindexedIndexes[c]);
	FUNC1(oldcontext);
}