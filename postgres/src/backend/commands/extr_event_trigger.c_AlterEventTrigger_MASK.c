#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {char tgenabled; int /*<<< orphan*/  trigname; } ;
struct TYPE_11__ {char evtenabled; int /*<<< orphan*/  oid; } ;
struct TYPE_10__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_event_trigger ;
typedef  TYPE_3__ AlterEventTrigStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  EVENTTRIGGERNAME ; 
 int /*<<< orphan*/  EventTriggerRelationId ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBJECT_EVENT_TRIGGER ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC15(AlterEventTrigStmt *stmt)
{
	Relation	tgrel;
	HeapTuple	tup;
	Oid			trigoid;
	Form_pg_event_trigger evtForm;
	char		tgenabled = stmt->tgenabled;

	tgrel = FUNC14(EventTriggerRelationId, RowExclusiveLock);

	tup = FUNC6(EVENTTRIGGERNAME,
							  FUNC0(stmt->trigname));
	if (!FUNC4(tup))
		FUNC8(ERROR,
				(FUNC9(ERRCODE_UNDEFINED_OBJECT),
				 FUNC10("event trigger \"%s\" does not exist",
						stmt->trigname)));

	evtForm = (Form_pg_event_trigger) FUNC2(tup);
	trigoid = evtForm->oid;

	if (!FUNC12(trigoid, FUNC3()))
		FUNC7(ACLCHECK_NOT_OWNER, OBJECT_EVENT_TRIGGER,
					   stmt->trigname);

	/* tuple is a copy, so we can modify it below */
	evtForm->evtenabled = tgenabled;

	FUNC1(tgrel, &tup->t_self, tup);

	FUNC5(EventTriggerRelationId,
							  trigoid, 0);

	/* clean up */
	FUNC11(tup);
	FUNC13(tgrel, RowExclusiveLock);

	return trigoid;
}