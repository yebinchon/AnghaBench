#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int32 ;
struct TYPE_6__ {size_t nr_txns; int /*<<< orphan*/  heap; int /*<<< orphan*/  old_change; TYPE_1__* entries; } ;
struct TYPE_5__ {int fd; } ;
typedef  TYPE_2__ ReorderBufferIterTXNState ;
typedef  int /*<<< orphan*/  ReorderBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ReorderBufferChange ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int change ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  node ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC8(ReorderBuffer *rb,
						   ReorderBufferIterTXNState *state)
{
	int32		off;

	for (off = 0; off < state->nr_txns; off++)
	{
		if (state->entries[off].fd != -1)
			FUNC1(state->entries[off].fd);
	}

	/* free memory we might have "leaked" in the last *Next call */
	if (!FUNC5(&state->old_change))
	{
		ReorderBufferChange *change;

		change = FUNC4(ReorderBufferChange, node,
								 FUNC6(&state->old_change));
		FUNC2(rb, change);
		FUNC0(FUNC5(&state->old_change));
	}

	FUNC3(state->heap);
	FUNC7(state);
}