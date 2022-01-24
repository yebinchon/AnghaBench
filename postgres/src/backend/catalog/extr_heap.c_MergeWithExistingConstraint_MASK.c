#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {scalar_t__ contype; int conislocal; int connoinherit; int coninhcount; int /*<<< orphan*/  convalidated; } ;
struct TYPE_21__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_20__ {TYPE_1__* rd_rel; int /*<<< orphan*/  rd_att; } ;
struct TYPE_19__ {scalar_t__ relispartition; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_3__* HeapTuple ;
typedef  TYPE_4__* Form_pg_constraint ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_constraint_conbin ; 
 int /*<<< orphan*/  Anum_pg_constraint_conname ; 
 int /*<<< orphan*/  Anum_pg_constraint_conrelid ; 
 int /*<<< orphan*/  Anum_pg_constraint_contypid ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ CONSTRAINT_CHECK ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  ConstraintRelidTypidNameIndexId ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERRCODE_INVALID_OBJECT_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 TYPE_3__* FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC23(Relation rel, const char *ccname, Node *expr,
							bool allow_merge, bool is_local,
							bool is_initially_valid,
							bool is_no_inherit)
{
	bool		found;
	Relation	conDesc;
	SysScanDesc conscan;
	ScanKeyData skey[3];
	HeapTuple	tup;

	/* Search for a pg_constraint entry with same name and relation */
	conDesc = FUNC22(ConstraintRelationId, RowExclusiveLock);

	found = false;

	FUNC8(&skey[0],
				Anum_pg_constraint_conrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC5(FUNC7(rel)));
	FUNC8(&skey[1],
				Anum_pg_constraint_contypid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC5(InvalidOid));
	FUNC8(&skey[2],
				Anum_pg_constraint_conname,
				BTEqualStrategyNumber, F_NAMEEQ,
				FUNC1(ccname));

	conscan = FUNC18(conDesc, ConstraintRelidTypidNameIndexId, true,
								 NULL, 3, skey);

	/* There can be at most one matching row */
	if (FUNC4(tup = FUNC20(conscan)))
	{
		Form_pg_constraint con = (Form_pg_constraint) FUNC3(tup);

		/* Found it.  Conflicts if not identical check constraint */
		if (con->contype == CONSTRAINT_CHECK)
		{
			Datum		val;
			bool		isnull;

			val = FUNC15(tup,
							  Anum_pg_constraint_conbin,
							  conDesc->rd_att, &isnull);
			if (isnull)
				FUNC10(ERROR, "null conbin for rel %s",
					 FUNC6(rel));
			if (FUNC11(expr, FUNC17(FUNC9(val))))
				found = true;
		}

		/*
		 * If the existing constraint is purely inherited (no local
		 * definition) then interpret addition of a local constraint as a
		 * legal merge.  This allows ALTER ADD CONSTRAINT on parent and child
		 * tables to be given in either order with same end state.  However if
		 * the relation is a partition, all inherited constraints are always
		 * non-local, including those that were merged.
		 */
		if (is_local && !con->conislocal && !rel->rd_rel->relispartition)
			allow_merge = true;

		if (!found || !allow_merge)
			FUNC12(ERROR,
					(FUNC13(ERRCODE_DUPLICATE_OBJECT),
					 FUNC14("constraint \"%s\" for relation \"%s\" already exists",
							ccname, FUNC6(rel))));

		/* If the child constraint is "no inherit" then cannot merge */
		if (con->connoinherit)
			FUNC12(ERROR,
					(FUNC13(ERRCODE_INVALID_OBJECT_DEFINITION),
					 FUNC14("constraint \"%s\" conflicts with non-inherited constraint on relation \"%s\"",
							ccname, FUNC6(rel))));

		/*
		 * Must not change an existing inherited constraint to "no inherit"
		 * status.  That's because inherited constraints should be able to
		 * propagate to lower-level children.
		 */
		if (con->coninhcount > 0 && is_no_inherit)
			FUNC12(ERROR,
					(FUNC13(ERRCODE_INVALID_OBJECT_DEFINITION),
					 FUNC14("constraint \"%s\" conflicts with inherited constraint on relation \"%s\"",
							ccname, FUNC6(rel))));

		/*
		 * If the child constraint is "not valid" then cannot merge with a
		 * valid parent constraint.
		 */
		if (is_initially_valid && !con->convalidated)
			FUNC12(ERROR,
					(FUNC13(ERRCODE_INVALID_OBJECT_DEFINITION),
					 FUNC14("constraint \"%s\" conflicts with NOT VALID constraint on relation \"%s\"",
							ccname, FUNC6(rel))));

		/* OK to update the tuple */
		FUNC12(NOTICE,
				(FUNC14("merging constraint \"%s\" with inherited definition",
						ccname)));

		tup = FUNC16(tup);
		con = (Form_pg_constraint) FUNC3(tup);

		/*
		 * In case of partitions, an inherited constraint must be inherited
		 * only once since it cannot have multiple parents and it is never
		 * considered local.
		 */
		if (rel->rd_rel->relispartition)
		{
			con->coninhcount = 1;
			con->conislocal = false;
		}
		else
		{
			if (is_local)
				con->conislocal = true;
			else
				con->coninhcount++;
		}

		if (is_no_inherit)
		{
			FUNC0(is_local);
			con->connoinherit = true;
		}

		FUNC2(conDesc, &tup->t_self, tup);
	}

	FUNC19(conscan);
	FUNC21(conDesc, RowExclusiveLock);

	return found;
}