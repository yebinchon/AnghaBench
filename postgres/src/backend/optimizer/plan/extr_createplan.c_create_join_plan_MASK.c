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
struct TYPE_5__ {int pathtype; } ;
struct TYPE_6__ {int /*<<< orphan*/  joinrestrictinfo; TYPE_1__ path; } ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Plan ;
typedef  int /*<<< orphan*/  Path ;
typedef  int /*<<< orphan*/  NestPath ;
typedef  int /*<<< orphan*/  MergePath ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__ JoinPath ;
typedef  int /*<<< orphan*/  HashPath ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ NIL ; 
#define  T_HashJoin 130 
#define  T_MergeJoin 129 
#define  T_NestLoop 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Plan *
FUNC11(PlannerInfo *root, JoinPath *best_path)
{
	Plan	   *plan;
	List	   *gating_clauses;

	switch (best_path->path.pathtype)
	{
		case T_MergeJoin:
			plan = (Plan *) FUNC2(root,
												  (MergePath *) best_path);
			break;
		case T_HashJoin:
			plan = (Plan *) FUNC1(root,
												 (HashPath *) best_path);
			break;
		case T_NestLoop:
			plan = (Plan *) FUNC3(root,
												 (NestPath *) best_path);
			break;
		default:
			FUNC4(ERROR, "unrecognized node type: %d",
				 (int) best_path->path.pathtype);
			plan = NULL;		/* keep compiler quiet */
			break;
	}

	/*
	 * If there are any pseudoconstant clauses attached to this node, insert a
	 * gating Result node that evaluates the pseudoconstants as one-time
	 * quals.
	 */
	gating_clauses = FUNC6(root, best_path->joinrestrictinfo);
	if (gating_clauses)
		plan = FUNC0(root, (Path *) best_path, plan,
								  gating_clauses);

#ifdef NOT_USED

	/*
	 * * Expensive function pullups may have pulled local predicates * into
	 * this path node.  Put them in the qpqual of the plan node. * JMH,
	 * 6/15/92
	 */
	if (get_loc_restrictinfo(best_path) != NIL)
		set_qpqual((Plan) plan,
				   list_concat(get_qpqual((Plan) plan),
							   get_actual_clauses(get_loc_restrictinfo(best_path))));
#endif

	return plan;
}