#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  target; TYPE_1__* rel; } ;
struct TYPE_7__ {scalar_t__ partition_qual; int /*<<< orphan*/  boundinfo; } ;
typedef  TYPE_1__ RelOptInfo ;
typedef  int /*<<< orphan*/  PartClauseTarget ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__ GeneratePruningStepsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(RelOptInfo *rel, List *clauses, PartClauseTarget target,
					GeneratePruningStepsContext *context)
{
	/* Initialize all output values to zero/false/NULL */
	FUNC2(context, 0, sizeof(GeneratePruningStepsContext));
	context->rel = rel;
	context->target = target;

	/*
	 * If this partitioned table is in turn a partition, and it shares any
	 * partition keys with its parent, then it's possible that the hierarchy
	 * allows the parent a narrower range of values than some of its
	 * partitions (particularly the default one).  This is normally not
	 * useful, but it can be to prune the default partition.
	 */
	if (FUNC3(rel->boundinfo) && rel->partition_qual)
	{
		/* Make a copy to avoid modifying the passed-in List */
		clauses = FUNC1(clauses, rel->partition_qual);
	}

	/* Down into the rabbit-hole. */
	(void) FUNC0(context, clauses);
}