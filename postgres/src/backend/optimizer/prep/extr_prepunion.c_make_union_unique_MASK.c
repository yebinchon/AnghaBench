#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {double rows; int /*<<< orphan*/  pathkeys; } ;
typedef  int /*<<< orphan*/  SetOperationStmt ;
typedef  int /*<<< orphan*/  RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  TYPE_1__ Path ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  AGGSPLIT_SIMPLE ; 
 int /*<<< orphan*/  AGG_HASHED ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  UPPERREL_SETOP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,double,double,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,double) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Path *
FUNC9(SetOperationStmt *op, Path *path, List *tlist,
				  PlannerInfo *root)
{
	RelOptInfo *result_rel = FUNC5(root, UPPERREL_SETOP, NULL);
	List	   *groupList;
	double		dNumGroups;

	/* Identify the grouping semantics */
	groupList = FUNC6(op, tlist);

	/*
	 * XXX for the moment, take the number of distinct groups as equal to the
	 * total input size, ie, the worst case.  This is too conservative, but we
	 * don't want to risk having the hashtable overrun memory; also, it's not
	 * clear how to get a decent estimate of the true size.  One should note
	 * as well the propensity of novices to write UNION rather than UNION ALL
	 * even when they don't expect any duplicates...
	 */
	dNumGroups = path->rows;

	/* Decide whether to hash or sort */
	if (FUNC0(root, groupList, path,
							dNumGroups, dNumGroups,
							"UNION"))
	{
		/* Hashed aggregate plan --- no sort needed */
		path = (Path *) FUNC1(root,
										result_rel,
										path,
										FUNC2(root, tlist),
										AGG_HASHED,
										AGGSPLIT_SIMPLE,
										groupList,
										NIL,
										NULL,
										dNumGroups);
	}
	else
	{
		/* Sort and Unique */
		if (groupList)
			path = (Path *)
				FUNC3(root,
								 result_rel,
								 path,
								 FUNC8(root,
															   groupList,
															   tlist),
								 -1.0);
		path = (Path *) FUNC4(root,
												 result_rel,
												 path,
												 FUNC7(path->pathkeys),
												 dNumGroups);
	}

	return path;
}