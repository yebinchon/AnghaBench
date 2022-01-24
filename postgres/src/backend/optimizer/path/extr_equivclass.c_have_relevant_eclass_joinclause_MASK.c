#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ec_members; int /*<<< orphan*/  ec_relids; } ;
struct TYPE_9__ {int /*<<< orphan*/  eq_classes; } ;
struct TYPE_8__ {int /*<<< orphan*/  relids; } ;
typedef  TYPE_1__ RelOptInfo ;
typedef  TYPE_2__ PlannerInfo ;
typedef  TYPE_3__ EquivalenceClass ;
typedef  int /*<<< orphan*/  Bitmapset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 

bool
FUNC6(PlannerInfo *root,
								RelOptInfo *rel1, RelOptInfo *rel2)
{
	Bitmapset  *matching_ecs;
	int			i;

	/* Examine only eclasses mentioning both rel1 and rel2 */
	matching_ecs = FUNC3(root, rel1->relids,
											 rel2->relids);

	i = -1;
	while ((i = FUNC1(matching_ecs, i)) >= 0)
	{
		EquivalenceClass *ec = (EquivalenceClass *) FUNC5(root->eq_classes,
															 i);

		/*
		 * Sanity check that get_common_eclass_indexes gave only ECs
		 * containing both rels.
		 */
		FUNC0(FUNC2(rel1->relids, ec->ec_relids));
		FUNC0(FUNC2(rel2->relids, ec->ec_relids));

		/*
		 * Won't generate joinclauses if single-member (this test covers the
		 * volatile case too)
		 */
		if (FUNC4(ec->ec_members) <= 1)
			continue;

		/*
		 * We do not need to examine the individual members of the EC, because
		 * all that we care about is whether each rel overlaps the relids of
		 * at least one member, and get_common_eclass_indexes() and the single
		 * member check above are sufficient to prove that.  (As with
		 * have_relevant_joinclause(), it is not necessary that the EC be able
		 * to form a joinclause relating exactly the two given rels, only that
		 * it be able to form a joinclause mentioning both, and this will
		 * surely be true if both of them overlap ec_relids.)
		 *
		 * Note we don't test ec_broken; if we did, we'd need a separate code
		 * path to look through ec_sources.  Checking the membership anyway is
		 * OK as a possibly-overoptimistic heuristic.
		 *
		 * We don't test ec_has_const either, even though a const eclass won't
		 * generate real join clauses.  This is because if we had "WHERE a.x =
		 * b.y and a.x = 42", it is worth considering a join between a and b,
		 * since the join result is likely to be small even though it'll end
		 * up being an unqualified nestloop.
		 */

		return true;
	}

	return false;
}