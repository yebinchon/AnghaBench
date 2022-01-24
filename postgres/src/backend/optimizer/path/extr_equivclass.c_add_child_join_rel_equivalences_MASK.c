#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  ec_members; int /*<<< orphan*/  ec_relids; scalar_t__ ec_has_volatile; } ;
struct TYPE_16__ {int /*<<< orphan*/  em_datatype; int /*<<< orphan*/  em_nullable_relids; int /*<<< orphan*/  em_relids; scalar_t__ em_expr; scalar_t__ em_is_child; scalar_t__ em_is_const; } ;
struct TYPE_15__ {int /*<<< orphan*/  eq_classes; } ;
struct TYPE_14__ {scalar_t__ reloptkind; int /*<<< orphan*/  relids; int /*<<< orphan*/  top_parent_relids; } ;
typedef  int /*<<< orphan*/  Relids ;
typedef  TYPE_1__ RelOptInfo ;
typedef  TYPE_2__ PlannerInfo ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  Expr ;
typedef  TYPE_3__ EquivalenceMember ;
typedef  TYPE_4__ EquivalenceClass ;
typedef  int /*<<< orphan*/  Bitmapset ;
typedef  int /*<<< orphan*/  AppendRelInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BMS_MULTIPLE ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ RELOPT_JOINREL ; 
 scalar_t__ RELOPT_OTHER_JOINREL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int) ; 

void
FUNC14(PlannerInfo *root,
								int nappinfos, AppendRelInfo **appinfos,
								RelOptInfo *parent_joinrel,
								RelOptInfo *child_joinrel)
{
	Relids		top_parent_relids = child_joinrel->top_parent_relids;
	Relids		child_relids = child_joinrel->relids;
	Bitmapset  *matching_ecs;
	int			i;

	FUNC0(FUNC1(child_joinrel) && FUNC1(parent_joinrel));

	/* We need consider only ECs that mention the parent joinrel */
	matching_ecs = FUNC11(root, top_parent_relids);

	i = -1;
	while ((i = FUNC9(matching_ecs, i)) >= 0)
	{
		EquivalenceClass *cur_ec = (EquivalenceClass *) FUNC13(root->eq_classes, i);
		int			num_members;

		/*
		 * If this EC contains a volatile expression, then generating child
		 * EMs would be downright dangerous, so skip it.  We rely on a
		 * volatile EC having only one EM.
		 */
		if (cur_ec->ec_has_volatile)
			continue;

		/* Sanity check on get_eclass_indexes_for_relids result */
		FUNC0(FUNC10(top_parent_relids, cur_ec->ec_relids));

		/*
		 * We don't use foreach() here because there's no point in scanning
		 * newly-added child members, so we can stop after the last
		 * pre-existing EC member.
		 */
		num_members = FUNC12(cur_ec->ec_members);
		for (int pos = 0; pos < num_members; pos++)
		{
			EquivalenceMember *cur_em = (EquivalenceMember *) FUNC13(cur_ec->ec_members, pos);

			if (cur_em->em_is_const)
				continue;		/* ignore consts here */

			/*
			 * We consider only original EC members here, not
			 * already-transformed child members.
			 */
			if (cur_em->em_is_child)
				continue;		/* ignore children here */

			/*
			 * We may ignore expressions that reference a single baserel,
			 * because add_child_rel_equivalences should have handled them.
			 */
			if (FUNC8(cur_em->em_relids) != BMS_MULTIPLE)
				continue;

			/* Does this member reference child's topmost parent rel? */
			if (FUNC10(cur_em->em_relids, top_parent_relids))
			{
				/* Yes, generate transformed child version */
				Expr	   *child_expr;
				Relids		new_relids;
				Relids		new_nullable_relids;

				if (parent_joinrel->reloptkind == RELOPT_JOINREL)
				{
					/* Simple single-level transformation */
					child_expr = (Expr *)
						FUNC3(root,
											   (Node *) cur_em->em_expr,
											   nappinfos, appinfos);
				}
				else
				{
					/* Must do multi-level transformation */
					FUNC0(parent_joinrel->reloptkind == RELOPT_OTHER_JOINREL);
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
				 * For nullable_relids, we must selectively replace parent
				 * nullable relids with child ones.
				 */
				new_nullable_relids = cur_em->em_nullable_relids;
				if (FUNC10(new_nullable_relids, top_parent_relids))
					new_nullable_relids =
						FUNC5(root,
													   new_nullable_relids,
													   child_relids,
													   top_parent_relids);

				(void) FUNC2(cur_ec, child_expr,
									 new_relids, new_nullable_relids,
									 true, cur_em->em_datatype);
			}
		}
	}
}