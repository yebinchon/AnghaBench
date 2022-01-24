#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  ec_members; int /*<<< orphan*/  ec_relids; scalar_t__ ec_has_volatile; } ;
struct TYPE_14__ {int /*<<< orphan*/  em_datatype; int /*<<< orphan*/  em_nullable_relids; int /*<<< orphan*/  em_relids; scalar_t__ em_expr; scalar_t__ em_is_child; scalar_t__ em_is_const; } ;
struct TYPE_13__ {int /*<<< orphan*/  eq_classes; int /*<<< orphan*/  ec_merging_done; } ;
struct TYPE_12__ {scalar_t__ reloptkind; int /*<<< orphan*/  eclass_indexes; int /*<<< orphan*/  relids; int /*<<< orphan*/  top_parent_relids; } ;
typedef  int /*<<< orphan*/  Relids ;
typedef  TYPE_1__ RelOptInfo ;
typedef  TYPE_2__ PlannerInfo ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  Expr ;
typedef  TYPE_3__ EquivalenceMember ;
typedef  TYPE_4__ EquivalenceClass ;
typedef  int /*<<< orphan*/  AppendRelInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ RELOPT_BASEREL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int) ; 

void
FUNC13(PlannerInfo *root,
						   AppendRelInfo *appinfo,
						   RelOptInfo *parent_rel,
						   RelOptInfo *child_rel)
{
	Relids		top_parent_relids = child_rel->top_parent_relids;
	Relids		child_relids = child_rel->relids;
	int			i;

	/*
	 * EC merging should be complete already, so we can use the parent rel's
	 * eclass_indexes to avoid searching all of root->eq_classes.
	 */
	FUNC0(root->ec_merging_done);
	FUNC0(FUNC1(parent_rel));

	i = -1;
	while ((i = FUNC9(parent_rel->eclass_indexes, i)) >= 0)
	{
		EquivalenceClass *cur_ec = (EquivalenceClass *) FUNC12(root->eq_classes, i);
		int			num_members;

		/*
		 * If this EC contains a volatile expression, then generating child
		 * EMs would be downright dangerous, so skip it.  We rely on a
		 * volatile EC having only one EM.
		 */
		if (cur_ec->ec_has_volatile)
			continue;

		/* Sanity check eclass_indexes only contain ECs for parent_rel */
		FUNC0(FUNC8(top_parent_relids, cur_ec->ec_relids));

		/*
		 * We don't use foreach() here because there's no point in scanning
		 * newly-added child members, so we can stop after the last
		 * pre-existing EC member.
		 */
		num_members = FUNC11(cur_ec->ec_members);
		for (int pos = 0; pos < num_members; pos++)
		{
			EquivalenceMember *cur_em = (EquivalenceMember *) FUNC12(cur_ec->ec_members, pos);

			if (cur_em->em_is_const)
				continue;		/* ignore consts here */

			/*
			 * We consider only original EC members here, not
			 * already-transformed child members.  Otherwise, if some original
			 * member expression references more than one appendrel, we'd get
			 * an O(N^2) explosion of useless derived expressions for
			 * combinations of children.  (But add_child_join_rel_equivalences
			 * may add targeted combinations for partitionwise-join purposes.)
			 */
			if (cur_em->em_is_child)
				continue;		/* ignore children here */

			/* Does this member reference child's topmost parent rel? */
			if (FUNC10(cur_em->em_relids, top_parent_relids))
			{
				/* Yes, generate transformed child version */
				Expr	   *child_expr;
				Relids		new_relids;
				Relids		new_nullable_relids;

				if (parent_rel->reloptkind == RELOPT_BASEREL)
				{
					/* Simple single-level transformation */
					child_expr = (Expr *)
						FUNC3(root,
											   (Node *) cur_em->em_expr,
											   1, &appinfo);
				}
				else
				{
					/* Must do multi-level transformation */
					child_expr = (Expr *)
						FUNC4(root,
														  (Node *) cur_em->em_expr,
														  child_relids,
														  top_parent_relids);
				}

				/*
				 * Transform em_relids to match.  Note we do *not* do
				 * pull_varnos(child_expr) here, as for example the
				 * transformation might have substituted a constant, but we
				 * don't want the child member to be marked as constant.
				 */
				new_relids = FUNC7(cur_em->em_relids,
											top_parent_relids);
				new_relids = FUNC6(new_relids, child_relids);

				/*
				 * And likewise for nullable_relids.  Note this code assumes
				 * parent and child relids are singletons.
				 */
				new_nullable_relids = cur_em->em_nullable_relids;
				if (FUNC10(new_nullable_relids, top_parent_relids))
				{
					new_nullable_relids = FUNC7(new_nullable_relids,
														 top_parent_relids);
					new_nullable_relids = FUNC6(new_nullable_relids,
														  child_relids);
				}

				(void) FUNC2(cur_ec, child_expr,
									 new_relids, new_nullable_relids,
									 true, cur_em->em_datatype);

				/* Record this EC index for the child rel */
				child_rel->eclass_indexes = FUNC5(child_rel->eclass_indexes, i);
			}
		}
	}
}