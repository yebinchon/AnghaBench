#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* rel; } ;
typedef  TYPE_2__ VariableStatData ;
struct TYPE_10__ {int /*<<< orphan*/  syn_lefthand; int /*<<< orphan*/  syn_righthand; } ;
struct TYPE_8__ {int /*<<< orphan*/  relids; } ;
typedef  TYPE_3__ SpecialJoinInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(PlannerInfo *root, List *args, SpecialJoinInfo *sjinfo,
				   VariableStatData *vardata1, VariableStatData *vardata2,
				   bool *join_is_reversed)
{
	Node	   *left,
			   *right;

	if (FUNC4(args) != 2)
		FUNC1(ERROR, "join operator should take two arguments");

	left = (Node *) FUNC3(args);
	right = (Node *) FUNC5(args);

	FUNC2(root, left, 0, vardata1);
	FUNC2(root, right, 0, vardata2);

	if (vardata1->rel &&
		FUNC0(vardata1->rel->relids, sjinfo->syn_righthand))
		*join_is_reversed = true;	/* var1 is on RHS */
	else if (vardata2->rel &&
			 FUNC0(vardata2->rel->relids, sjinfo->syn_lefthand))
		*join_is_reversed = true;	/* var2 is on LHS */
	else
		*join_is_reversed = false;
}