#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  relids; int /*<<< orphan*/  cheapest_total_path; int /*<<< orphan*/  pathlist; } ;
struct TYPE_20__ {int jointype; int /*<<< orphan*/  syn_righthand; int /*<<< orphan*/  min_righthand; int /*<<< orphan*/  min_lefthand; } ;
typedef  TYPE_1__ SpecialJoinInfo ;
typedef  TYPE_2__ RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
#define  JOIN_ANTI 132 
#define  JOIN_FULL 131 
#define  JOIN_INNER 130 
#define  JOIN_LEFT 129 
 int const JOIN_RIGHT ; 
#define  JOIN_SEMI 128 
 int const JOIN_UNIQUE_INNER ; 
 int const JOIN_UNIQUE_OUTER ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,TYPE_2__*,int const,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(PlannerInfo *root, RelOptInfo *rel1,
							RelOptInfo *rel2, RelOptInfo *joinrel,
							SpecialJoinInfo *sjinfo, List *restrictlist)
{
	/*
	 * Consider paths using each rel as both outer and inner.  Depending on
	 * the join type, a provably empty outer or inner rel might mean the join
	 * is provably empty too; in which case throw away any previously computed
	 * paths and mark the join as dummy.  (We do it this way since it's
	 * conceivable that dummy-ness of a multi-element join might only be
	 * noticeable for certain construction paths.)
	 *
	 * Also, a provably constant-false join restriction typically means that
	 * we can skip evaluating one or both sides of the join.  We do this by
	 * marking the appropriate rel as dummy.  For outer joins, a
	 * constant-false restriction that is pushed down still means the whole
	 * join is dummy, while a non-pushed-down one means that no inner rows
	 * will join so we can treat the inner rel as dummy.
	 *
	 * We need only consider the jointypes that appear in join_info_list, plus
	 * JOIN_INNER.
	 */
	switch (sjinfo->jointype)
	{
		case JOIN_INNER:
			if (FUNC8(rel1) || FUNC8(rel2) ||
				FUNC10(restrictlist, joinrel, false))
			{
				FUNC9(joinrel);
				break;
			}
			FUNC0(root, joinrel, rel1, rel2,
								 JOIN_INNER, sjinfo,
								 restrictlist);
			FUNC0(root, joinrel, rel2, rel1,
								 JOIN_INNER, sjinfo,
								 restrictlist);
			break;
		case JOIN_LEFT:
			if (FUNC8(rel1) ||
				FUNC10(restrictlist, joinrel, true))
			{
				FUNC9(joinrel);
				break;
			}
			if (FUNC10(restrictlist, joinrel, false) &&
				FUNC2(rel2->relids, sjinfo->syn_righthand))
				FUNC9(rel2);
			FUNC0(root, joinrel, rel1, rel2,
								 JOIN_LEFT, sjinfo,
								 restrictlist);
			FUNC0(root, joinrel, rel2, rel1,
								 JOIN_RIGHT, sjinfo,
								 restrictlist);
			break;
		case JOIN_FULL:
			if ((FUNC8(rel1) && FUNC8(rel2)) ||
				FUNC10(restrictlist, joinrel, true))
			{
				FUNC9(joinrel);
				break;
			}
			FUNC0(root, joinrel, rel1, rel2,
								 JOIN_FULL, sjinfo,
								 restrictlist);
			FUNC0(root, joinrel, rel2, rel1,
								 JOIN_FULL, sjinfo,
								 restrictlist);

			/*
			 * If there are join quals that aren't mergeable or hashable, we
			 * may not be able to build any valid plan.  Complain here so that
			 * we can give a somewhat-useful error message.  (Since we have no
			 * flexibility of planning for a full join, there's no chance of
			 * succeeding later with another pair of input rels.)
			 */
			if (joinrel->pathlist == NIL)
				FUNC5(ERROR,
						(FUNC6(ERRCODE_FEATURE_NOT_SUPPORTED),
						 FUNC7("FULL JOIN is only supported with merge-joinable or hash-joinable join conditions")));
			break;
		case JOIN_SEMI:

			/*
			 * We might have a normal semijoin, or a case where we don't have
			 * enough rels to do the semijoin but can unique-ify the RHS and
			 * then do an innerjoin (see comments in join_is_legal).  In the
			 * latter case we can't apply JOIN_SEMI joining.
			 */
			if (FUNC2(sjinfo->min_lefthand, rel1->relids) &&
				FUNC2(sjinfo->min_righthand, rel2->relids))
			{
				if (FUNC8(rel1) || FUNC8(rel2) ||
					FUNC10(restrictlist, joinrel, false))
				{
					FUNC9(joinrel);
					break;
				}
				FUNC0(root, joinrel, rel1, rel2,
									 JOIN_SEMI, sjinfo,
									 restrictlist);
			}

			/*
			 * If we know how to unique-ify the RHS and one input rel is
			 * exactly the RHS (not a superset) we can consider unique-ifying
			 * it and then doing a regular join.  (The create_unique_path
			 * check here is probably redundant with what join_is_legal did,
			 * but if so the check is cheap because it's cached.  So test
			 * anyway to be sure.)
			 */
			if (FUNC1(sjinfo->syn_righthand, rel2->relids) &&
				FUNC3(root, rel2, rel2->cheapest_total_path,
								   sjinfo) != NULL)
			{
				if (FUNC8(rel1) || FUNC8(rel2) ||
					FUNC10(restrictlist, joinrel, false))
				{
					FUNC9(joinrel);
					break;
				}
				FUNC0(root, joinrel, rel1, rel2,
									 JOIN_UNIQUE_INNER, sjinfo,
									 restrictlist);
				FUNC0(root, joinrel, rel2, rel1,
									 JOIN_UNIQUE_OUTER, sjinfo,
									 restrictlist);
			}
			break;
		case JOIN_ANTI:
			if (FUNC8(rel1) ||
				FUNC10(restrictlist, joinrel, true))
			{
				FUNC9(joinrel);
				break;
			}
			if (FUNC10(restrictlist, joinrel, false) &&
				FUNC2(rel2->relids, sjinfo->syn_righthand))
				FUNC9(rel2);
			FUNC0(root, joinrel, rel1, rel2,
								 JOIN_ANTI, sjinfo,
								 restrictlist);
			break;
		default:
			/* other values not expected here */
			FUNC4(ERROR, "unrecognized join type: %d", (int) sjinfo->jointype);
			break;
	}

	/* Apply partitionwise join technique, if possible. */
	FUNC11(root, rel1, rel2, joinrel, sjinfo, restrictlist);
}