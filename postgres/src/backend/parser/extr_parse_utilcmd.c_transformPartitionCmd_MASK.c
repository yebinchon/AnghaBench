#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  pstate; int /*<<< orphan*/  partbound; TYPE_2__* rel; } ;
struct TYPE_12__ {int /*<<< orphan*/ * bound; } ;
struct TYPE_11__ {TYPE_1__* rd_rel; } ;
struct TYPE_10__ {int relkind; } ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__ PartitionCmd ;
typedef  TYPE_4__ CreateStmtContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_OBJECT_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
#define  RELKIND_INDEX 131 
#define  RELKIND_PARTITIONED_INDEX 130 
#define  RELKIND_PARTITIONED_TABLE 129 
#define  RELKIND_RELATION 128 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(CreateStmtContext *cxt, PartitionCmd *cmd)
{
	Relation	parentRel = cxt->rel;

	switch (parentRel->rd_rel->relkind)
	{
		case RELKIND_PARTITIONED_TABLE:
			/* transform the partition bound, if any */
			FUNC0(FUNC1(parentRel) != NULL);
			if (cmd->bound != NULL)
				cxt->partbound = FUNC7(cxt->pstate, parentRel,
														 cmd->bound);
			break;
		case RELKIND_PARTITIONED_INDEX:
			/* nothing to check */
			FUNC0(cmd->bound == NULL);
			break;
		case RELKIND_RELATION:
			/* the table must be partitioned */
			FUNC4(ERROR,
					(FUNC5(ERRCODE_INVALID_OBJECT_DEFINITION),
					 FUNC6("table \"%s\" is not partitioned",
							FUNC2(parentRel))));
			break;
		case RELKIND_INDEX:
			/* the index must be partitioned */
			FUNC4(ERROR,
					(FUNC5(ERRCODE_INVALID_OBJECT_DEFINITION),
					 FUNC6("index \"%s\" is not partitioned",
							FUNC2(parentRel))));
			break;
		default:
			/* parser shouldn't let this case through */
			FUNC3(ERROR, "\"%s\" is not a partitioned table or index",
				 FUNC2(parentRel));
			break;
	}
}