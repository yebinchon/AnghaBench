#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int for_execute; } ;
typedef  TYPE_1__ acquireLocksOnSubLinks_context ;
struct TYPE_8__ {int /*<<< orphan*/  hasSubLinks; int /*<<< orphan*/  targetList; int /*<<< orphan*/  rtable; } ;
typedef  TYPE_2__ Query ;
typedef  int /*<<< orphan*/  Node ;
typedef  scalar_t__ CmdType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ CMD_INSERT ; 
 scalar_t__ CMD_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRS2_NEW_VARNO ; 
 int /*<<< orphan*/  PRS2_OLD_VARNO ; 
 int /*<<< orphan*/  REPLACEVARS_CHANGE_VARNO ; 
 int /*<<< orphan*/  REPLACEVARS_SUBSTITUTE_NULL ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Query *
FUNC6(Query *parsetree,
					   Node *rule_qual,
					   int rt_index,
					   CmdType event)
{
	/* Don't scribble on the passed qual (it's in the relcache!) */
	Node	   *new_qual = FUNC4(rule_qual);
	acquireLocksOnSubLinks_context context;

	context.for_execute = true;

	/*
	 * In case there are subqueries in the qual, acquire necessary locks and
	 * fix any deleted JOIN RTE entries.  (This is somewhat redundant with
	 * rewriteRuleAction, but not entirely ... consider restructuring so that
	 * we only need to process the qual this way once.)
	 */
	(void) FUNC3(new_qual, &context);

	/* Fix references to OLD */
	FUNC1(new_qual, PRS2_OLD_VARNO, rt_index, 0);
	/* Fix references to NEW */
	if (event == CMD_INSERT || event == CMD_UPDATE)
		new_qual = FUNC2(new_qual,
											 PRS2_NEW_VARNO,
											 0,
											 FUNC5(rt_index,
													  parsetree->rtable),
											 parsetree->targetList,
											 (event == CMD_UPDATE) ?
											 REPLACEVARS_CHANGE_VARNO :
											 REPLACEVARS_SUBSTITUTE_NULL,
											 rt_index,
											 &parsetree->hasSubLinks);
	/* And attach the fixed qual */
	FUNC0(parsetree, new_qual);

	return parsetree;
}