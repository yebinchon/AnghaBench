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
struct TYPE_6__ {TYPE_1__** simple_rel_array; } ;
struct TYPE_5__ {int /*<<< orphan*/ * eclass_indexes; } ;
typedef  int /*<<< orphan*/  Relids ;
typedef  TYPE_2__ PlannerInfo ;
typedef  int /*<<< orphan*/  Bitmapset ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Bitmapset *
FUNC3(PlannerInfo *root, Relids relids1, Relids relids2)
{
	Bitmapset  *rel1ecs;
	Bitmapset  *rel2ecs;
	int			relid;

	rel1ecs = FUNC2(root, relids1);

	/*
	 * We can get away with just using the relation's eclass_indexes directly
	 * when relids2 is a singleton set.
	 */
	if (FUNC0(relids2, &relid))
		rel2ecs = root->simple_rel_array[relid]->eclass_indexes;
	else
		rel2ecs = FUNC2(root, relids2);

	/* Calculate and return the common EC indexes, recycling the left input. */
	return FUNC1(rel1ecs, rel2ecs);
}