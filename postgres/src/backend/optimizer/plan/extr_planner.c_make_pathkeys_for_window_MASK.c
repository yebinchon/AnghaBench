#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  orderClause; int /*<<< orphan*/  partitionClause; } ;
typedef  TYPE_1__ WindowClause ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static List *
FUNC8(PlannerInfo *root, WindowClause *wc,
						 List *tlist)
{
	List	   *window_pathkeys;
	List	   *window_sortclauses;

	/* Throw error if can't sort */
	if (!FUNC4(wc->partitionClause))
		FUNC0(ERROR,
				(FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC3("could not implement window PARTITION BY"),
				 FUNC2("Window partitioning columns must be of sortable datatypes.")));
	if (!FUNC4(wc->orderClause))
		FUNC0(ERROR,
				(FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC3("could not implement window ORDER BY"),
				 FUNC2("Window ordering columns must be of sortable datatypes.")));

	/* Okay, make the combined pathkeys */
	window_sortclauses = FUNC5(wc->partitionClause, wc->orderClause);
	window_pathkeys = FUNC7(root,
													window_sortclauses,
													tlist);
	FUNC6(window_sortclauses);
	return window_pathkeys;
}