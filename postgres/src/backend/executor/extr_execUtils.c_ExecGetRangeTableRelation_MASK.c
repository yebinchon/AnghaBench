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
struct TYPE_7__ {int es_range_table_size; int /*<<< orphan*/ ** es_relations; } ;
struct TYPE_6__ {scalar_t__ rtekind; scalar_t__ rellockmode; int /*<<< orphan*/  relid; } ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  TYPE_1__ RangeTblEntry ;
typedef  int Index ;
typedef  TYPE_2__ EState ;

/* Variables and functions */
 scalar_t__ AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ NoLock ; 
 scalar_t__ RTE_RELATION ; 
 TYPE_1__* FUNC3 (int,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

Relation
FUNC5(EState *estate, Index rti)
{
	Relation	rel;

	FUNC0(rti > 0 && rti <= estate->es_range_table_size);

	rel = estate->es_relations[rti - 1];
	if (rel == NULL)
	{
		/* First time through, so open the relation */
		RangeTblEntry *rte = FUNC3(rti, estate);

		FUNC0(rte->rtekind == RTE_RELATION);

		if (!FUNC2())
		{
			/*
			 * In a normal query, we should already have the appropriate lock,
			 * but verify that through an Assert.  Since there's already an
			 * Assert inside table_open that insists on holding some lock, it
			 * seems sufficient to check this only when rellockmode is higher
			 * than the minimum.
			 */
			rel = FUNC4(rte->relid, NoLock);
			FUNC0(rte->rellockmode == AccessShareLock ||
				   FUNC1(rel, rte->rellockmode, false));
		}
		else
		{
			/*
			 * If we are a parallel worker, we need to obtain our own local
			 * lock on the relation.  This ensures sane behavior in case the
			 * parent process exits before we do.
			 */
			rel = FUNC4(rte->relid, rte->rellockmode);
		}

		estate->es_relations[rti - 1] = rel;
	}

	return rel;
}