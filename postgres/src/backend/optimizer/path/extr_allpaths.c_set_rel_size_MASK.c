#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
struct TYPE_31__ {int /*<<< orphan*/  self_reference; int /*<<< orphan*/ * tablesample; int /*<<< orphan*/  relkind; scalar_t__ inh; } ;
struct TYPE_30__ {scalar_t__ reloptkind; int rtekind; scalar_t__ rows; } ;
typedef  TYPE_1__ RelOptInfo ;
typedef  TYPE_2__ RangeTblEntry ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  RELKIND_FOREIGN_TABLE ; 
 int /*<<< orphan*/  RELKIND_PARTITIONED_TABLE ; 
 scalar_t__ RELOPT_BASEREL ; 
#define  RTE_CTE 135 
#define  RTE_FUNCTION 134 
#define  RTE_NAMEDTUPLESTORE 133 
#define  RTE_RELATION 132 
#define  RTE_RESULT 131 
#define  RTE_SUBQUERY 130 
#define  RTE_TABLEFUNC 129 
#define  RTE_VALUES 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC17(PlannerInfo *root, RelOptInfo *rel,
			 Index rti, RangeTblEntry *rte)
{
	if (rel->reloptkind == RELOPT_BASEREL &&
		FUNC3(root, rel, rte))
	{
		/*
		 * We proved we don't need to scan the rel via constraint exclusion,
		 * so set up a single dummy path for it.  Here we only check this for
		 * regular baserels; if it's an otherrel, CE was already checked in
		 * set_append_rel_size().
		 *
		 * In this case, we go ahead and set up the relation's path right away
		 * instead of leaving it for set_rel_pathlist to do.  This is because
		 * we don't have a convention for marking a rel as dummy except by
		 * assigning a dummy path to it.
		 */
		FUNC6(rel);
	}
	else if (rte->inh)
	{
		/* It's an "append relation", process accordingly */
		FUNC4(root, rel, rti, rte);
	}
	else
	{
		switch (rel->rtekind)
		{
			case RTE_RELATION:
				if (rte->relkind == RELKIND_FOREIGN_TABLE)
				{
					/* Foreign table */
					FUNC7(root, rel, rte);
				}
				else if (rte->relkind == RELKIND_PARTITIONED_TABLE)
				{
					/*
					 * We could get here if asked to scan a partitioned table
					 * with ONLY.  In that case we shouldn't scan any of the
					 * partitions, so mark it as a dummy rel.
					 */
					FUNC6(rel);
				}
				else if (rte->tablesample != NULL)
				{
					/* Sampled relation */
					FUNC14(root, rel, rte);
				}
				else
				{
					/* Plain relation */
					FUNC10(root, rel, rte);
				}
				break;
			case RTE_SUBQUERY:

				/*
				 * Subqueries don't support making a choice between
				 * parameterized and unparameterized paths, so just go ahead
				 * and build their paths immediately.
				 */
				FUNC12(root, rel, rti, rte);
				break;
			case RTE_FUNCTION:
				FUNC8(root, rel);
				break;
			case RTE_TABLEFUNC:
				FUNC13(root, rel);
				break;
			case RTE_VALUES:
				FUNC15(root, rel);
				break;
			case RTE_CTE:

				/*
				 * CTEs don't support making a choice between parameterized
				 * and unparameterized paths, so just go ahead and build their
				 * paths immediately.
				 */
				if (rte->self_reference)
					FUNC16(root, rel, rte);
				else
					FUNC5(root, rel, rte);
				break;
			case RTE_NAMEDTUPLESTORE:
				/* Might as well just build the path immediately */
				FUNC9(root, rel, rte);
				break;
			case RTE_RESULT:
				/* Might as well just build the path immediately */
				FUNC11(root, rel, rte);
				break;
			default:
				FUNC2(ERROR, "unexpected rtekind: %d", (int) rel->rtekind);
				break;
		}
	}

	/*
	 * We insist that all non-dummy rels have a nonzero rowcount estimate.
	 */
	FUNC0(rel->rows > 0 || FUNC1(rel));
}