#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  trig_delete_instead_row; int /*<<< orphan*/  trig_update_instead_row; int /*<<< orphan*/  trig_insert_instead_row; } ;
typedef  TYPE_2__ TriggerDesc ;
struct TYPE_16__ {int (* IsForeignRelUpdatable ) (TYPE_4__*) ;int /*<<< orphan*/ * ExecForeignDelete; int /*<<< orphan*/ * ExecForeignUpdate; int /*<<< orphan*/ * ExecForeignInsert; } ;
struct TYPE_15__ {TYPE_1__* rd_rel; TYPE_2__* trigdesc; } ;
struct TYPE_14__ {TYPE_5__* ri_FdwRoutine; TYPE_4__* ri_RelationDesc; } ;
struct TYPE_12__ {int relkind; } ;
typedef  TYPE_3__ ResultRelInfo ;
typedef  TYPE_4__* Relation ;
typedef  TYPE_5__ FdwRoutine ;
typedef  scalar_t__ CmdType ;

/* Variables and functions */
#define  CMD_DELETE 137 
#define  CMD_INSERT 136 
#define  CMD_UPDATE 135 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  RELKIND_FOREIGN_TABLE 134 
#define  RELKIND_MATVIEW 133 
#define  RELKIND_PARTITIONED_TABLE 132 
#define  RELKIND_RELATION 131 
#define  RELKIND_SEQUENCE 130 
#define  RELKIND_TOASTVALUE 129 
#define  RELKIND_VIEW 128 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_4__*) ; 
 int FUNC9 (TYPE_4__*) ; 
 int FUNC10 (TYPE_4__*) ; 

void
FUNC11(ResultRelInfo *resultRelInfo, CmdType operation)
{
	Relation	resultRel = resultRelInfo->ri_RelationDesc;
	TriggerDesc *trigDesc = resultRel->trigdesc;
	FdwRoutine *fdwroutine;

	switch (resultRel->rd_rel->relkind)
	{
		case RELKIND_RELATION:
		case RELKIND_PARTITIONED_TABLE:
			FUNC0(resultRel, operation);
			break;
		case RELKIND_SEQUENCE:
			FUNC4(ERROR,
					(FUNC5(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC7("cannot change sequence \"%s\"",
							FUNC2(resultRel))));
			break;
		case RELKIND_TOASTVALUE:
			FUNC4(ERROR,
					(FUNC5(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC7("cannot change TOAST relation \"%s\"",
							FUNC2(resultRel))));
			break;
		case RELKIND_VIEW:

			/*
			 * Okay only if there's a suitable INSTEAD OF trigger.  Messages
			 * here should match rewriteHandler.c's rewriteTargetView, except
			 * that we omit errdetail because we haven't got the information
			 * handy (and given that we really shouldn't get here anyway, it's
			 * not worth great exertion to get).
			 */
			switch (operation)
			{
				case CMD_INSERT:
					if (!trigDesc || !trigDesc->trig_insert_instead_row)
						FUNC4(ERROR,
								(FUNC5(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
								 FUNC7("cannot insert into view \"%s\"",
										FUNC2(resultRel)),
								 FUNC6("To enable inserting into the view, provide an INSTEAD OF INSERT trigger or an unconditional ON INSERT DO INSTEAD rule.")));
					break;
				case CMD_UPDATE:
					if (!trigDesc || !trigDesc->trig_update_instead_row)
						FUNC4(ERROR,
								(FUNC5(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
								 FUNC7("cannot update view \"%s\"",
										FUNC2(resultRel)),
								 FUNC6("To enable updating the view, provide an INSTEAD OF UPDATE trigger or an unconditional ON UPDATE DO INSTEAD rule.")));
					break;
				case CMD_DELETE:
					if (!trigDesc || !trigDesc->trig_delete_instead_row)
						FUNC4(ERROR,
								(FUNC5(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
								 FUNC7("cannot delete from view \"%s\"",
										FUNC2(resultRel)),
								 FUNC6("To enable deleting from the view, provide an INSTEAD OF DELETE trigger or an unconditional ON DELETE DO INSTEAD rule.")));
					break;
				default:
					FUNC3(ERROR, "unrecognized CmdType: %d", (int) operation);
					break;
			}
			break;
		case RELKIND_MATVIEW:
			if (!FUNC1())
				FUNC4(ERROR,
						(FUNC5(ERRCODE_WRONG_OBJECT_TYPE),
						 FUNC7("cannot change materialized view \"%s\"",
								FUNC2(resultRel))));
			break;
		case RELKIND_FOREIGN_TABLE:
			/* Okay only if the FDW supports it */
			fdwroutine = resultRelInfo->ri_FdwRoutine;
			switch (operation)
			{
				case CMD_INSERT:
					if (fdwroutine->ExecForeignInsert == NULL)
						FUNC4(ERROR,
								(FUNC5(ERRCODE_FEATURE_NOT_SUPPORTED),
								 FUNC7("cannot insert into foreign table \"%s\"",
										FUNC2(resultRel))));
					if (fdwroutine->IsForeignRelUpdatable != NULL &&
						(fdwroutine->IsForeignRelUpdatable(resultRel) & (1 << CMD_INSERT)) == 0)
						FUNC4(ERROR,
								(FUNC5(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
								 FUNC7("foreign table \"%s\" does not allow inserts",
										FUNC2(resultRel))));
					break;
				case CMD_UPDATE:
					if (fdwroutine->ExecForeignUpdate == NULL)
						FUNC4(ERROR,
								(FUNC5(ERRCODE_FEATURE_NOT_SUPPORTED),
								 FUNC7("cannot update foreign table \"%s\"",
										FUNC2(resultRel))));
					if (fdwroutine->IsForeignRelUpdatable != NULL &&
						(fdwroutine->IsForeignRelUpdatable(resultRel) & (1 << CMD_UPDATE)) == 0)
						FUNC4(ERROR,
								(FUNC5(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
								 FUNC7("foreign table \"%s\" does not allow updates",
										FUNC2(resultRel))));
					break;
				case CMD_DELETE:
					if (fdwroutine->ExecForeignDelete == NULL)
						FUNC4(ERROR,
								(FUNC5(ERRCODE_FEATURE_NOT_SUPPORTED),
								 FUNC7("cannot delete from foreign table \"%s\"",
										FUNC2(resultRel))));
					if (fdwroutine->IsForeignRelUpdatable != NULL &&
						(fdwroutine->IsForeignRelUpdatable(resultRel) & (1 << CMD_DELETE)) == 0)
						FUNC4(ERROR,
								(FUNC5(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
								 FUNC7("foreign table \"%s\" does not allow deletes",
										FUNC2(resultRel))));
					break;
				default:
					FUNC3(ERROR, "unrecognized CmdType: %d", (int) operation);
					break;
			}
			break;
		default:
			FUNC4(ERROR,
					(FUNC5(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC7("cannot change relation \"%s\"",
							FUNC2(resultRel))));
			break;
	}
}