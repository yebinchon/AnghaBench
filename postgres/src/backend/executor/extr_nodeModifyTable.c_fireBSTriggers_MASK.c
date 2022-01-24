#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  onConflictAction; } ;
struct TYPE_5__ {int /*<<< orphan*/  state; scalar_t__ plan; } ;
struct TYPE_6__ {int operation; TYPE_1__ ps; int /*<<< orphan*/ * rootResultRelInfo; int /*<<< orphan*/ * resultRelInfo; } ;
typedef  int /*<<< orphan*/  ResultRelInfo ;
typedef  TYPE_2__ ModifyTableState ;
typedef  TYPE_3__ ModifyTable ;

/* Variables and functions */
#define  CMD_DELETE 130 
#define  CMD_INSERT 129 
#define  CMD_UPDATE 128 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ONCONFLICT_UPDATE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(ModifyTableState *node)
{
	ModifyTable *plan = (ModifyTable *) node->ps.plan;
	ResultRelInfo *resultRelInfo = node->resultRelInfo;

	/*
	 * If the node modifies a partitioned table, we must fire its triggers.
	 * Note that in that case, node->resultRelInfo points to the first leaf
	 * partition, not the root table.
	 */
	if (node->rootResultRelInfo != NULL)
		resultRelInfo = node->rootResultRelInfo;

	switch (node->operation)
	{
		case CMD_INSERT:
			FUNC1(node->ps.state, resultRelInfo);
			if (plan->onConflictAction == ONCONFLICT_UPDATE)
				FUNC2(node->ps.state,
									 resultRelInfo);
			break;
		case CMD_UPDATE:
			FUNC2(node->ps.state, resultRelInfo);
			break;
		case CMD_DELETE:
			FUNC0(node->ps.state, resultRelInfo);
			break;
		default:
			FUNC3(ERROR, "unknown operation");
			break;
	}
}