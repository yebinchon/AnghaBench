#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ contype; scalar_t__ confrelid; scalar_t__ conrelid; int /*<<< orphan*/  conname; } ;
struct TYPE_15__ {TYPE_1__* rd_rel; } ;
struct TYPE_14__ {int relpersistence; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_2__* Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_constraint ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_constraint_confrelid ; 
 int /*<<< orphan*/  Anum_pg_constraint_conrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ CONSTRAINT_FOREIGN ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  ConstraintRelidTypidNameIndexId ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TABLE_DEFINITION ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
#define  RELPERSISTENCE_PERMANENT 130 
#define  RELPERSISTENCE_TEMP 129 
#define  RELPERSISTENCE_UNLOGGED 128 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC22(Relation rel, bool toLogged)
{
	Relation	pg_constraint;
	HeapTuple	tuple;
	SysScanDesc scan;
	ScanKeyData skey[1];

	/*
	 * Disallow changing status for a temp table.  Also verify whether we can
	 * get away with doing nothing; in such cases we don't need to run the
	 * checks below, either.
	 */
	switch (rel->rd_rel->relpersistence)
	{
		case RELPERSISTENCE_TEMP:
			FUNC8(ERROR,
					(FUNC9(ERRCODE_INVALID_TABLE_DEFINITION),
					 FUNC11("cannot change logged status of table \"%s\" because it is temporary",
							FUNC5(rel)),
					 FUNC12(rel)));
			break;
		case RELPERSISTENCE_PERMANENT:
			if (toLogged)
				/* nothing to do */
				return false;
			break;
		case RELPERSISTENCE_UNLOGGED:
			if (!toLogged)
				/* nothing to do */
				return false;
			break;
	}

	/*
	 * Check that the table is not part any publication when changing to
	 * UNLOGGED as UNLOGGED tables can't be published.
	 */
	if (!toLogged &&
		FUNC14(FUNC1(FUNC6(rel))) > 0)
		FUNC8(ERROR,
				(FUNC9(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC11("cannot change table \"%s\" to unlogged because it is part of a publication",
						FUNC5(rel)),
				 FUNC10("Unlogged relations cannot be replicated.")));

	/*
	 * Check existing foreign key constraints to preserve the invariant that
	 * permanent tables cannot reference unlogged ones.  Self-referencing
	 * foreign keys can safely be ignored.
	 */
	pg_constraint = FUNC21(ConstraintRelationId, AccessShareLock);

	/*
	 * Scan conrelid if changing to permanent, else confrelid.  This also
	 * determines whether a useful index exists.
	 */
	FUNC7(&skey[0],
				toLogged ? Anum_pg_constraint_conrelid :
				Anum_pg_constraint_confrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(FUNC6(rel)));
	scan = FUNC17(pg_constraint,
							  toLogged ? ConstraintRelidTypidNameIndexId : InvalidOid,
							  true, NULL, 1, skey);

	while (FUNC2(tuple = FUNC19(scan)))
	{
		Form_pg_constraint con = (Form_pg_constraint) FUNC0(tuple);

		if (con->contype == CONSTRAINT_FOREIGN)
		{
			Oid			foreignrelid;
			Relation	foreignrel;

			/* the opposite end of what we used as scankey */
			foreignrelid = toLogged ? con->confrelid : con->conrelid;

			/* ignore if self-referencing */
			if (FUNC6(rel) == foreignrelid)
				continue;

			foreignrel = FUNC16(foreignrelid, AccessShareLock);

			if (toLogged)
			{
				if (foreignrel->rd_rel->relpersistence != RELPERSISTENCE_PERMANENT)
					FUNC8(ERROR,
							(FUNC9(ERRCODE_INVALID_TABLE_DEFINITION),
							 FUNC11("could not change table \"%s\" to logged because it references unlogged table \"%s\"",
									FUNC5(rel),
									FUNC5(foreignrel)),
							 FUNC13(rel, FUNC3(con->conname))));
			}
			else
			{
				if (foreignrel->rd_rel->relpersistence == RELPERSISTENCE_PERMANENT)
					FUNC8(ERROR,
							(FUNC9(ERRCODE_INVALID_TABLE_DEFINITION),
							 FUNC11("could not change table \"%s\" to unlogged because it references logged table \"%s\"",
									FUNC5(rel),
									FUNC5(foreignrel)),
							 FUNC13(rel, FUNC3(con->conname))));
			}

			FUNC15(foreignrel, AccessShareLock);
		}
	}

	FUNC18(scan);

	FUNC20(pg_constraint, AccessShareLock);

	return true;
}