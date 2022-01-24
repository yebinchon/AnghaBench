#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_5__ {int trig_insert_new_table; int trig_update_old_table; int trig_update_new_table; int trig_delete_old_table; int /*<<< orphan*/  trig_truncate_after_statement; int /*<<< orphan*/  trig_truncate_before_statement; int /*<<< orphan*/  trig_delete_after_statement; int /*<<< orphan*/  trig_delete_before_statement; int /*<<< orphan*/  trig_delete_instead_row; int /*<<< orphan*/  trig_delete_after_row; int /*<<< orphan*/  trig_delete_before_row; int /*<<< orphan*/  trig_update_after_statement; int /*<<< orphan*/  trig_update_before_statement; int /*<<< orphan*/  trig_update_instead_row; int /*<<< orphan*/  trig_update_after_row; int /*<<< orphan*/  trig_update_before_row; int /*<<< orphan*/  trig_insert_after_statement; int /*<<< orphan*/  trig_insert_before_statement; int /*<<< orphan*/  trig_insert_instead_row; int /*<<< orphan*/  trig_insert_after_row; int /*<<< orphan*/  trig_insert_before_row; } ;
typedef  TYPE_1__ TriggerDesc ;
struct TYPE_6__ {int /*<<< orphan*/  tgoldtable; int /*<<< orphan*/  tgnewtable; int /*<<< orphan*/  tgtype; } ;
typedef  TYPE_2__ Trigger ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRIGGER_TYPE_AFTER ; 
 int /*<<< orphan*/  TRIGGER_TYPE_BEFORE ; 
 int /*<<< orphan*/  TRIGGER_TYPE_DELETE ; 
 int /*<<< orphan*/  TRIGGER_TYPE_INSERT ; 
 int /*<<< orphan*/  TRIGGER_TYPE_INSTEAD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRIGGER_TYPE_ROW ; 
 int /*<<< orphan*/  TRIGGER_TYPE_STATEMENT ; 
 int /*<<< orphan*/  TRIGGER_TYPE_TRUNCATE ; 
 int /*<<< orphan*/  TRIGGER_TYPE_UPDATE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(TriggerDesc *trigdesc, Trigger *trigger)
{
	int16		tgtype = trigger->tgtype;

	trigdesc->trig_insert_before_row |=
		FUNC3(tgtype, TRIGGER_TYPE_ROW,
							 TRIGGER_TYPE_BEFORE, TRIGGER_TYPE_INSERT);
	trigdesc->trig_insert_after_row |=
		FUNC3(tgtype, TRIGGER_TYPE_ROW,
							 TRIGGER_TYPE_AFTER, TRIGGER_TYPE_INSERT);
	trigdesc->trig_insert_instead_row |=
		FUNC3(tgtype, TRIGGER_TYPE_ROW,
							 TRIGGER_TYPE_INSTEAD, TRIGGER_TYPE_INSERT);
	trigdesc->trig_insert_before_statement |=
		FUNC3(tgtype, TRIGGER_TYPE_STATEMENT,
							 TRIGGER_TYPE_BEFORE, TRIGGER_TYPE_INSERT);
	trigdesc->trig_insert_after_statement |=
		FUNC3(tgtype, TRIGGER_TYPE_STATEMENT,
							 TRIGGER_TYPE_AFTER, TRIGGER_TYPE_INSERT);
	trigdesc->trig_update_before_row |=
		FUNC3(tgtype, TRIGGER_TYPE_ROW,
							 TRIGGER_TYPE_BEFORE, TRIGGER_TYPE_UPDATE);
	trigdesc->trig_update_after_row |=
		FUNC3(tgtype, TRIGGER_TYPE_ROW,
							 TRIGGER_TYPE_AFTER, TRIGGER_TYPE_UPDATE);
	trigdesc->trig_update_instead_row |=
		FUNC3(tgtype, TRIGGER_TYPE_ROW,
							 TRIGGER_TYPE_INSTEAD, TRIGGER_TYPE_UPDATE);
	trigdesc->trig_update_before_statement |=
		FUNC3(tgtype, TRIGGER_TYPE_STATEMENT,
							 TRIGGER_TYPE_BEFORE, TRIGGER_TYPE_UPDATE);
	trigdesc->trig_update_after_statement |=
		FUNC3(tgtype, TRIGGER_TYPE_STATEMENT,
							 TRIGGER_TYPE_AFTER, TRIGGER_TYPE_UPDATE);
	trigdesc->trig_delete_before_row |=
		FUNC3(tgtype, TRIGGER_TYPE_ROW,
							 TRIGGER_TYPE_BEFORE, TRIGGER_TYPE_DELETE);
	trigdesc->trig_delete_after_row |=
		FUNC3(tgtype, TRIGGER_TYPE_ROW,
							 TRIGGER_TYPE_AFTER, TRIGGER_TYPE_DELETE);
	trigdesc->trig_delete_instead_row |=
		FUNC3(tgtype, TRIGGER_TYPE_ROW,
							 TRIGGER_TYPE_INSTEAD, TRIGGER_TYPE_DELETE);
	trigdesc->trig_delete_before_statement |=
		FUNC3(tgtype, TRIGGER_TYPE_STATEMENT,
							 TRIGGER_TYPE_BEFORE, TRIGGER_TYPE_DELETE);
	trigdesc->trig_delete_after_statement |=
		FUNC3(tgtype, TRIGGER_TYPE_STATEMENT,
							 TRIGGER_TYPE_AFTER, TRIGGER_TYPE_DELETE);
	/* there are no row-level truncate triggers */
	trigdesc->trig_truncate_before_statement |=
		FUNC3(tgtype, TRIGGER_TYPE_STATEMENT,
							 TRIGGER_TYPE_BEFORE, TRIGGER_TYPE_TRUNCATE);
	trigdesc->trig_truncate_after_statement |=
		FUNC3(tgtype, TRIGGER_TYPE_STATEMENT,
							 TRIGGER_TYPE_AFTER, TRIGGER_TYPE_TRUNCATE);

	trigdesc->trig_insert_new_table |=
		(FUNC1(tgtype) &&
		 FUNC4(trigger->tgnewtable));
	trigdesc->trig_update_old_table |=
		(FUNC2(tgtype) &&
		 FUNC4(trigger->tgoldtable));
	trigdesc->trig_update_new_table |=
		(FUNC2(tgtype) &&
		 FUNC4(trigger->tgnewtable));
	trigdesc->trig_delete_old_table |=
		(FUNC0(tgtype) &&
		 FUNC4(trigger->tgoldtable));
}