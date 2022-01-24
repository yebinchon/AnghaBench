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
typedef  int /*<<< orphan*/  Var ;
typedef  int /*<<< orphan*/  TargetEntry ;
struct TYPE_3__ {int /*<<< orphan*/  targetList; int /*<<< orphan*/  resultRelation; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  RangeTblEntry ;
typedef  TYPE_1__ Query ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  SelfItemPointerAttributeNumber ; 
 int /*<<< orphan*/  TIDOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5(Query *parsetree,
								RangeTblEntry *target_rte,
								Relation target_relation)
{
	Var		   *var;
	const char *attrname;
	TargetEntry *tle;

	/*
	 * In postgres_fdw, what we need is the ctid, same as for a regular table.
	 */

	/* Make a Var representing the desired value */
	var = FUNC3(parsetree->resultRelation,
				  SelfItemPointerAttributeNumber,
				  TIDOID,
				  -1,
				  InvalidOid,
				  0);

	/* Wrap it in a resjunk TLE with the right name ... */
	attrname = "ctid";

	tle = FUNC2((Expr *) var,
						  FUNC1(parsetree->targetList) + 1,
						  FUNC4(attrname),
						  true);

	/* ... and add it to the query's targetlist */
	parsetree->targetList = FUNC0(parsetree->targetList, tle);
}