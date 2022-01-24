#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  context; } ;
typedef  TYPE_1__ Tuplestorestate ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  scalar_t__ MinimalTuple ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*) ; 

void
FUNC5(Tuplestorestate *state,
						TupleTableSlot *slot)
{
	MinimalTuple tuple;
	MemoryContext oldcxt = FUNC2(state->context);

	/*
	 * Form a MinimalTuple in working memory
	 */
	tuple = FUNC0(slot);
	FUNC3(state, FUNC1(tuple));

	FUNC4(state, (void *) tuple);

	FUNC2(oldcxt);
}