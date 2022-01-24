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
struct TYPE_7__ {scalar_t__ confrelid; int nkeys; scalar_t__* conkey; scalar_t__* confkey; scalar_t__* conpfeqop; scalar_t__ conoid; scalar_t__ conrelid; } ;
struct TYPE_6__ {scalar_t__ confrelid; scalar_t__ condeferrable; scalar_t__ condeferred; scalar_t__ confupdtype; scalar_t__ confdeltype; scalar_t__ confmatchtype; int /*<<< orphan*/  convalidated; int /*<<< orphan*/  conparentid; } ;
struct TYPE_5__ {scalar_t__ tgconstrrelid; scalar_t__ tgrelid; int /*<<< orphan*/  oid; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__* Form_pg_trigger ;
typedef  TYPE_2__* Form_pg_constraint ;
typedef  TYPE_3__ ForeignKeyCacheInfo ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_trigger_tgconstraint ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CONSTROID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  DROP_RESTRICT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TriggerConstraintIndexId ; 
 int /*<<< orphan*/  TriggerRelationId ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC18(ForeignKeyCacheInfo *fk,
							 Oid partRelid,
							 Oid parentConstrOid,
							 int numfks,
							 AttrNumber *mapped_conkey,
							 AttrNumber *confkey,
							 Oid *conpfeqop)
{
	HeapTuple	parentConstrTup;
	Form_pg_constraint parentConstr;
	HeapTuple	partcontup;
	Form_pg_constraint partConstr;
	Relation	trigrel;
	ScanKeyData key;
	SysScanDesc scan;
	HeapTuple	trigtup;

	parentConstrTup = FUNC9(CONSTROID,
									  FUNC5(parentConstrOid));
	if (!FUNC3(parentConstrTup))
		FUNC11(ERROR, "cache lookup failed for constraint %u", parentConstrOid);
	parentConstr = (Form_pg_constraint) FUNC2(parentConstrTup);

	/*
	 * Do some quick & easy initial checks.  If any of these fail, we cannot
	 * use this constraint.
	 */
	if (fk->confrelid != parentConstr->confrelid || fk->nkeys != numfks)
	{
		FUNC7(parentConstrTup);
		return false;
	}
	for (int i = 0; i < numfks; i++)
	{
		if (fk->conkey[i] != mapped_conkey[i] ||
			fk->confkey[i] != confkey[i] ||
			fk->conpfeqop[i] != conpfeqop[i])
		{
			FUNC7(parentConstrTup);
			return false;
		}
	}

	/*
	 * Looks good so far; do some more extensive checks.  Presumably the check
	 * for 'convalidated' could be dropped, since we don't really care about
	 * that, but let's be careful for now.
	 */
	partcontup = FUNC9(CONSTROID,
								 FUNC5(fk->conoid));
	if (!FUNC3(partcontup))
		FUNC11(ERROR, "cache lookup failed for constraint %u", fk->conoid);
	partConstr = (Form_pg_constraint) FUNC2(partcontup);
	if (FUNC6(partConstr->conparentid) ||
		!partConstr->convalidated ||
		partConstr->condeferrable != parentConstr->condeferrable ||
		partConstr->condeferred != parentConstr->condeferred ||
		partConstr->confupdtype != parentConstr->confupdtype ||
		partConstr->confdeltype != parentConstr->confdeltype ||
		partConstr->confmatchtype != parentConstr->confmatchtype)
	{
		FUNC7(parentConstrTup);
		FUNC7(partcontup);
		return false;
	}

	FUNC7(partcontup);
	FUNC7(parentConstrTup);

	/*
	 * Looks good!  Attach this constraint.  The action triggers in the new
	 * partition become redundant -- the parent table already has equivalent
	 * ones, and those will be able to reach the partition.  Remove the ones
	 * in the partition.  We identify them because they have our constraint
	 * OID, as well as being on the referenced rel.
	 */
	trigrel = FUNC17(TriggerRelationId, RowExclusiveLock);
	FUNC8(&key,
				Anum_pg_trigger_tgconstraint,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC5(fk->conoid));

	scan = FUNC13(trigrel, TriggerConstraintIndexId, true,
							  NULL, 1, &key);
	while ((trigtup = FUNC15(scan)) != NULL)
	{
		Form_pg_trigger trgform = (Form_pg_trigger) FUNC2(trigtup);
		ObjectAddress trigger;

		if (trgform->tgconstrrelid != fk->conrelid)
			continue;
		if (trgform->tgrelid != fk->confrelid)
			continue;

		/*
		 * The constraint is originally set up to contain this trigger as an
		 * implementation object, so there's a dependency record that links
		 * the two; however, since the trigger is no longer needed, we remove
		 * the dependency link in order to be able to drop the trigger while
		 * keeping the constraint intact.
		 */
		FUNC10(TriggerRelationId,
								   trgform->oid,
								   false);
		/* make dependency deletion visible to performDeletion */
		FUNC0();
		FUNC4(trigger, TriggerRelationId,
						 trgform->oid);
		FUNC12(&trigger, DROP_RESTRICT, 0);
		/* make trigger drop visible, in case the loop iterates */
		FUNC0();
	}

	FUNC14(scan);
	FUNC16(trigrel, RowExclusiveLock);

	FUNC1(fk->conoid, parentConstrOid, partRelid);
	FUNC0();
	return true;
}