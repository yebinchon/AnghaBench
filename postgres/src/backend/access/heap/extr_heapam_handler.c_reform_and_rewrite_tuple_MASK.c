#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_8__ {scalar_t__ attisdropped; } ;
struct TYPE_7__ {int natts; } ;
typedef  int /*<<< orphan*/  RewriteState ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(HeapTuple tuple,
						 Relation OldHeap, Relation NewHeap,
						 Datum *values, bool *isnull, RewriteState rwstate)
{
	TupleDesc	oldTupDesc = FUNC0(OldHeap);
	TupleDesc	newTupDesc = FUNC0(NewHeap);
	HeapTuple	copiedTuple;
	int			i;

	FUNC2(tuple, oldTupDesc, values, isnull);

	/* Be sure to null out any dropped columns */
	for (i = 0; i < newTupDesc->natts; i++)
	{
		if (FUNC1(newTupDesc, i)->attisdropped)
			isnull[i] = true;
	}

	copiedTuple = FUNC3(newTupDesc, values, isnull);

	/* The heap rewrite module does the rest */
	FUNC5(rwstate, tuple, copiedTuple);

	FUNC4(copiedTuple);
}