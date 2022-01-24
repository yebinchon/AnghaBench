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
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_7__ {int /*<<< orphan*/  es_query_cxt; } ;
struct TYPE_6__ {int /*<<< orphan*/ * ri_ReturningSlot; int /*<<< orphan*/  ri_RelationDesc; } ;
typedef  TYPE_1__ ResultRelInfo ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_2__ EState ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

TupleTableSlot *
FUNC4(EState *estate, ResultRelInfo *relInfo)
{
	if (relInfo->ri_ReturningSlot == NULL)
	{
		Relation	rel = relInfo->ri_RelationDesc;
		MemoryContext oldcontext = FUNC1(estate->es_query_cxt);

		relInfo->ri_ReturningSlot =
			FUNC0(estate,
								   FUNC2(rel),
								   FUNC3(rel));

		FUNC1(oldcontext);
	}

	return relInfo->ri_ReturningSlot;
}