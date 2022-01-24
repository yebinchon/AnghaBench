#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* TupleDesc ;
struct TYPE_8__ {int /*<<< orphan*/  relid; } ;
struct TYPE_7__ {TYPE_1__* constr; } ;
struct TYPE_6__ {scalar_t__ has_generated_stored; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_3__ RangeTblEntry ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Index ;

/* Variables and functions */
 int /*<<< orphan*/  NoLock ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC4(PlannerInfo *root, Index rti)
{
	RangeTblEntry *rte = FUNC1(rti, root);
	Relation	relation;
	TupleDesc	tupdesc;
	bool		result = false;

	/* Assume we already have adequate lock */
	relation = FUNC3(rte->relid, NoLock);

	tupdesc = FUNC0(relation);
	result = tupdesc->constr && tupdesc->constr->has_generated_stored;

	FUNC2(relation, NoLock);

	return result;
}