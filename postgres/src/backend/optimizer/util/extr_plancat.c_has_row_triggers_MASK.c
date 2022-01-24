#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  trig_delete_before_row; int /*<<< orphan*/  trig_delete_after_row; int /*<<< orphan*/  trig_update_before_row; int /*<<< orphan*/  trig_update_after_row; int /*<<< orphan*/  trig_insert_before_row; int /*<<< orphan*/  trig_insert_after_row; } ;
typedef  TYPE_1__ TriggerDesc ;
struct TYPE_9__ {int /*<<< orphan*/  relid; } ;
struct TYPE_8__ {TYPE_1__* trigdesc; } ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__ RangeTblEntry ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Index ;
typedef  int CmdType ;

/* Variables and functions */
#define  CMD_DELETE 130 
#define  CMD_INSERT 129 
#define  CMD_UPDATE 128 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC4(PlannerInfo *root, Index rti, CmdType event)
{
	RangeTblEntry *rte = FUNC1(rti, root);
	Relation	relation;
	TriggerDesc *trigDesc;
	bool		result = false;

	/* Assume we already have adequate lock */
	relation = FUNC3(rte->relid, NoLock);

	trigDesc = relation->trigdesc;
	switch (event)
	{
		case CMD_INSERT:
			if (trigDesc &&
				(trigDesc->trig_insert_after_row ||
				 trigDesc->trig_insert_before_row))
				result = true;
			break;
		case CMD_UPDATE:
			if (trigDesc &&
				(trigDesc->trig_update_after_row ||
				 trigDesc->trig_update_before_row))
				result = true;
			break;
		case CMD_DELETE:
			if (trigDesc &&
				(trigDesc->trig_delete_after_row ||
				 trigDesc->trig_delete_before_row))
				result = true;
			break;
		default:
			FUNC0(ERROR, "unrecognized CmdType: %d", (int) event);
			break;
	}

	FUNC2(relation, NoLock);
	return result;
}