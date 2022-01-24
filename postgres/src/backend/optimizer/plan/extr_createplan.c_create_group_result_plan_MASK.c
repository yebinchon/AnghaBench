#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  quals; int /*<<< orphan*/  path; } ;
struct TYPE_6__ {int /*<<< orphan*/  plan; } ;
typedef  TYPE_1__ Result ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Path ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__ GroupResultPath ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Result *
FUNC4(PlannerInfo *root, GroupResultPath *best_path)
{
	Result	   *plan;
	List	   *tlist;
	List	   *quals;

	tlist = FUNC0(root, &best_path->path);

	/* best_path->quals is just bare clauses */
	quals = FUNC3(root, best_path->quals);

	plan = FUNC2(tlist, (Node *) quals, NULL);

	FUNC1(&plan->plan, (Path *) best_path);

	return plan;
}