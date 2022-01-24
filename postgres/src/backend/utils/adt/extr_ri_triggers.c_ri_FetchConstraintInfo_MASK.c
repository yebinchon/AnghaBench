#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ tgconstrrelid; int /*<<< orphan*/  tgname; int /*<<< orphan*/  tgconstraint; } ;
typedef  TYPE_1__ Trigger ;
struct TYPE_7__ {scalar_t__ fk_relid; scalar_t__ pk_relid; scalar_t__ confmatchtype; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_2__ RI_ConstraintInfo ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INVALID_OBJECT_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FKCONSTR_MATCH_FULL ; 
 scalar_t__ FKCONSTR_MATCH_PARTIAL ; 
 scalar_t__ FKCONSTR_MATCH_SIMPLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const RI_ConstraintInfo *
FUNC9(Trigger *trigger, Relation trig_rel, bool rel_is_pk)
{
	Oid			constraintOid = trigger->tgconstraint;
	const RI_ConstraintInfo *riinfo;

	/*
	 * Check that the FK constraint's OID is available; it might not be if
	 * we've been invoked via an ordinary trigger or an old-style "constraint
	 * trigger".
	 */
	if (!FUNC0(constraintOid))
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_OBJECT_DEFINITION),
				 FUNC7("no pg_constraint entry for trigger \"%s\" on table \"%s\"",
						trigger->tgname, FUNC1(trig_rel)),
				 FUNC6("Remove this referential integrity trigger and its mates, then do ALTER TABLE ADD CONSTRAINT.")));

	/* Find or create a hashtable entry for the constraint */
	riinfo = FUNC8(constraintOid);

	/* Do some easy cross-checks against the trigger call data */
	if (rel_is_pk)
	{
		if (riinfo->fk_relid != trigger->tgconstrrelid ||
			riinfo->pk_relid != FUNC2(trig_rel))
			FUNC3(ERROR, "wrong pg_constraint entry for trigger \"%s\" on table \"%s\"",
				 trigger->tgname, FUNC1(trig_rel));
	}
	else
	{
		if (riinfo->fk_relid != FUNC2(trig_rel) ||
			riinfo->pk_relid != trigger->tgconstrrelid)
			FUNC3(ERROR, "wrong pg_constraint entry for trigger \"%s\" on table \"%s\"",
				 trigger->tgname, FUNC1(trig_rel));
	}

	if (riinfo->confmatchtype != FKCONSTR_MATCH_FULL &&
		riinfo->confmatchtype != FKCONSTR_MATCH_PARTIAL &&
		riinfo->confmatchtype != FKCONSTR_MATCH_SIMPLE)
		FUNC3(ERROR, "unrecognized confmatchtype: %d",
			 riinfo->confmatchtype);

	if (riinfo->confmatchtype == FKCONSTR_MATCH_PARTIAL)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC7("MATCH PARTIAL not yet implemented")));

	return riinfo;
}