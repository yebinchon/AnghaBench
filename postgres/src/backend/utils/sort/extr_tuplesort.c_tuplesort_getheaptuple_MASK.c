#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  sortcontext; } ;
typedef  TYPE_1__ Tuplesortstate ;
struct TYPE_7__ {int /*<<< orphan*/ * tuple; } ;
typedef  TYPE_2__ SortTuple ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/ * HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,TYPE_2__*) ; 

HeapTuple
FUNC2(Tuplesortstate *state, bool forward)
{
	MemoryContext oldcontext = FUNC0(state->sortcontext);
	SortTuple	stup;

	if (!FUNC1(state, forward, &stup))
		stup.tuple = NULL;

	FUNC0(oldcontext);

	return stup.tuple;
}