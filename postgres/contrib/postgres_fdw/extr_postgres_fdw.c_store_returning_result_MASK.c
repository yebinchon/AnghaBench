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
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_3__ {int /*<<< orphan*/  temp_cxt; int /*<<< orphan*/  retrieved_attrs; int /*<<< orphan*/  attinmeta; int /*<<< orphan*/  rel; } ;
typedef  TYPE_1__ PgFdwModifyState ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(PgFdwModifyState *fmstate,
					   TupleTableSlot *slot, PGresult *res)
{
	FUNC4();
	{
		HeapTuple	newtup;

		newtup = FUNC6(res, 0,
											fmstate->rel,
											fmstate->attinmeta,
											fmstate->retrieved_attrs,
											NULL,
											fmstate->temp_cxt);

		/*
		 * The returning slot will not necessarily be suitable to store
		 * heaptuples directly, so allow for conversion.
		 */
		FUNC0(newtup, slot, true);
	}
	FUNC1();
	{
		if (res)
			FUNC5(res);
		FUNC3();
	}
	FUNC2();
}