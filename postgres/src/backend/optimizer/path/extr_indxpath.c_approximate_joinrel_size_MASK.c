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
struct TYPE_6__ {int simple_rel_array_size; TYPE_1__** simple_rel_array; } ;
struct TYPE_5__ {int relid; double rows; } ;
typedef  int /*<<< orphan*/  Relids ;
typedef  TYPE_1__ RelOptInfo ;
typedef  TYPE_2__ PlannerInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static double
FUNC3(PlannerInfo *root, Relids relids)
{
	double		rowcount = 1.0;
	int			relid;

	relid = -1;
	while ((relid = FUNC2(relids, relid)) >= 0)
	{
		RelOptInfo *rel;

		/* Paranoia: ignore bogus relid indexes */
		if (relid >= root->simple_rel_array_size)
			continue;
		rel = root->simple_rel_array[relid];
		if (rel == NULL)
			continue;
		FUNC0(rel->relid == relid);	/* sanity check on array */

		/* Relation could be proven empty, if so ignore */
		if (FUNC1(rel))
			continue;

		/* Otherwise, rel's rows estimate should be valid by now */
		FUNC0(rel->rows > 0);

		/* Accumulate product */
		rowcount *= rel->rows;
	}
	return rowcount;
}