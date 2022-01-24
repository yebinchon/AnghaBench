#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int consider_partitionwise_join; int nparts; scalar_t__ reloptkind; int /*<<< orphan*/  relids; struct TYPE_25__** part_rels; int /*<<< orphan*/  boundinfo; TYPE_1__* part_scheme; } ;
struct TYPE_24__ {int jointype; } ;
struct TYPE_23__ {int /*<<< orphan*/  parttypbyval; int /*<<< orphan*/  parttyplen; int /*<<< orphan*/  partnatts; } ;
typedef  TYPE_2__ SpecialJoinInfo ;
typedef  int /*<<< orphan*/  Relids ;
typedef  TYPE_3__ RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  AppendRelInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 
#define  JOIN_ANTI 132 
#define  JOIN_FULL 131 
#define  JOIN_INNER 130 
#define  JOIN_LEFT 129 
#define  JOIN_SEMI 128 
 scalar_t__ RELOPT_OTHER_MEMBER_REL ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ ** FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_3__*,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC17(PlannerInfo *root, RelOptInfo *rel1, RelOptInfo *rel2,
					   RelOptInfo *joinrel, SpecialJoinInfo *parent_sjinfo,
					   List *parent_restrictlist)
{
	bool		rel1_is_simple = FUNC3(rel1);
	bool		rel2_is_simple = FUNC3(rel2);
	int			nparts;
	int			cnt_parts;

	/* Guard against stack overflow due to overly deep partition hierarchy. */
	FUNC11();

	/* Nothing to do, if the join relation is not partitioned. */
	if (!FUNC2(joinrel))
		return;

	/* The join relation should have consider_partitionwise_join set. */
	FUNC0(joinrel->consider_partitionwise_join);

	/*
	 * Since this join relation is partitioned, all the base relations
	 * participating in this join must be partitioned and so are all the
	 * intermediate join relations.
	 */
	FUNC0(FUNC2(rel1) && FUNC2(rel2));
	FUNC0(FUNC4(rel1) && FUNC4(rel2));

	/* The joining relations should have consider_partitionwise_join set. */
	FUNC0(rel1->consider_partitionwise_join &&
		   rel2->consider_partitionwise_join);

	/*
	 * The partition scheme of the join relation should match that of the
	 * joining relations.
	 */
	FUNC0(joinrel->part_scheme == rel1->part_scheme &&
		   joinrel->part_scheme == rel2->part_scheme);

	/*
	 * Since we allow partitionwise join only when the partition bounds of the
	 * joining relations exactly match, the partition bounds of the join
	 * should match those of the joining relations.
	 */
	FUNC0(FUNC14(joinrel->part_scheme->partnatts,
								  joinrel->part_scheme->parttyplen,
								  joinrel->part_scheme->parttypbyval,
								  joinrel->boundinfo, rel1->boundinfo));
	FUNC0(FUNC14(joinrel->part_scheme->partnatts,
								  joinrel->part_scheme->parttyplen,
								  joinrel->part_scheme->parttypbyval,
								  joinrel->boundinfo, rel2->boundinfo));

	nparts = joinrel->nparts;

	/*
	 * Create child-join relations for this partitioned join, if those don't
	 * exist. Add paths to child-joins for a pair of child relations
	 * corresponding to the given pair of parent relations.
	 */
	for (cnt_parts = 0; cnt_parts < nparts; cnt_parts++)
	{
		RelOptInfo *child_rel1 = rel1->part_rels[cnt_parts];
		RelOptInfo *child_rel2 = rel2->part_rels[cnt_parts];
		bool		rel1_empty = (child_rel1 == NULL ||
								  FUNC1(child_rel1));
		bool		rel2_empty = (child_rel2 == NULL ||
								  FUNC1(child_rel2));
		SpecialJoinInfo *child_sjinfo;
		List	   *child_restrictlist;
		RelOptInfo *child_joinrel;
		Relids		child_joinrelids;
		AppendRelInfo **appinfos;
		int			nappinfos;

		/*
		 * Check for cases where we can prove that this segment of the join
		 * returns no rows, due to one or both inputs being empty (including
		 * inputs that have been pruned away entirely).  If so just ignore it.
		 * These rules are equivalent to populate_joinrel_with_paths's rules
		 * for dummy input relations.
		 */
		switch (parent_sjinfo->jointype)
		{
			case JOIN_INNER:
			case JOIN_SEMI:
				if (rel1_empty || rel2_empty)
					continue;	/* ignore this join segment */
				break;
			case JOIN_LEFT:
			case JOIN_ANTI:
				if (rel1_empty)
					continue;	/* ignore this join segment */
				break;
			case JOIN_FULL:
				if (rel1_empty && rel2_empty)
					continue;	/* ignore this join segment */
				break;
			default:
				/* other values not expected here */
				FUNC12(ERROR, "unrecognized join type: %d",
					 (int) parent_sjinfo->jointype);
				break;
		}

		/*
		 * If a child has been pruned entirely then we can't generate paths
		 * for it, so we have to reject partitionwise joining unless we were
		 * able to eliminate this partition above.
		 */
		if (child_rel1 == NULL || child_rel2 == NULL)
		{
			/*
			 * Mark the joinrel as unpartitioned so that later functions treat
			 * it correctly.
			 */
			joinrel->nparts = 0;
			return;
		}

		/*
		 * If a leaf relation has consider_partitionwise_join=false, it means
		 * that it's a dummy relation for which we skipped setting up tlist
		 * expressions and adding EC members in set_append_rel_size(), so
		 * again we have to fail here.
		 */
		if (rel1_is_simple && !child_rel1->consider_partitionwise_join)
		{
			FUNC0(child_rel1->reloptkind == RELOPT_OTHER_MEMBER_REL);
			FUNC0(FUNC1(child_rel1));
			joinrel->nparts = 0;
			return;
		}
		if (rel2_is_simple && !child_rel2->consider_partitionwise_join)
		{
			FUNC0(child_rel2->reloptkind == RELOPT_OTHER_MEMBER_REL);
			FUNC0(FUNC1(child_rel2));
			joinrel->nparts = 0;
			return;
		}

		/* We should never try to join two overlapping sets of rels. */
		FUNC0(!FUNC7(child_rel1->relids, child_rel2->relids));
		child_joinrelids = FUNC8(child_rel1->relids, child_rel2->relids);
		appinfos = FUNC13(root, child_joinrelids, &nappinfos);

		/*
		 * Construct SpecialJoinInfo from parent join relations's
		 * SpecialJoinInfo.
		 */
		child_sjinfo = FUNC10(root, parent_sjinfo,
											   child_rel1->relids,
											   child_rel2->relids);

		/*
		 * Construct restrictions applicable to the child join from those
		 * applicable to the parent join.
		 */
		child_restrictlist =
			(List *) FUNC5(root,
											(Node *) parent_restrictlist,
											nappinfos, appinfos);
		FUNC15(appinfos);

		child_joinrel = joinrel->part_rels[cnt_parts];
		if (!child_joinrel)
		{
			child_joinrel = FUNC9(root, child_rel1, child_rel2,
												 joinrel, child_restrictlist,
												 child_sjinfo,
												 child_sjinfo->jointype);
			joinrel->part_rels[cnt_parts] = child_joinrel;
		}

		FUNC0(FUNC6(child_joinrel->relids, child_joinrelids));

		FUNC16(root, child_rel1, child_rel2,
									child_joinrel, child_sjinfo,
									child_restrictlist);
	}
}