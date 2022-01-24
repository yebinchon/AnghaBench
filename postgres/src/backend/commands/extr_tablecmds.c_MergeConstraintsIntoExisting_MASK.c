#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_26__ {scalar_t__ contype; int coninhcount; int conislocal; int /*<<< orphan*/  conname; scalar_t__ convalidated; scalar_t__ connoinherit; } ;
struct TYPE_25__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_24__ {TYPE_1__* rd_rel; } ;
struct TYPE_23__ {scalar_t__ relkind; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__* HeapTuple ;
typedef  TYPE_4__* Form_pg_constraint ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_constraint_conrelid ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ CONSTRAINT_CHECK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  ConstraintRelidTypidNameIndexId ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERRCODE_INVALID_OBJECT_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,...) ; 
 TYPE_3__* FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC22(Relation child_rel, Relation parent_rel)
{
	Relation	catalog_relation;
	TupleDesc	tuple_desc;
	SysScanDesc parent_scan;
	ScanKeyData parent_key;
	HeapTuple	parent_tuple;
	bool		child_is_partition = false;

	catalog_relation = FUNC21(ConstraintRelationId, RowExclusiveLock);
	tuple_desc = FUNC6(catalog_relation);

	/* If parent_rel is a partitioned table, child_rel must be a partition */
	if (parent_rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
		child_is_partition = true;

	/* Outer loop scans through the parent's constraint definitions */
	FUNC9(&parent_key,
				Anum_pg_constraint_conrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC5(FUNC8(parent_rel)));
	parent_scan = FUNC17(catalog_relation, ConstraintRelidTypidNameIndexId,
									 true, NULL, 1, &parent_key);

	while (FUNC3(parent_tuple = FUNC19(parent_scan)))
	{
		Form_pg_constraint parent_con = (Form_pg_constraint) FUNC2(parent_tuple);
		SysScanDesc child_scan;
		ScanKeyData child_key;
		HeapTuple	child_tuple;
		bool		found = false;

		if (parent_con->contype != CONSTRAINT_CHECK)
			continue;

		/* if the parent's constraint is marked NO INHERIT, it's not inherited */
		if (parent_con->connoinherit)
			continue;

		/* Search for a child constraint matching this one */
		FUNC9(&child_key,
					Anum_pg_constraint_conrelid,
					BTEqualStrategyNumber, F_OIDEQ,
					FUNC5(FUNC8(child_rel)));
		child_scan = FUNC17(catalog_relation, ConstraintRelidTypidNameIndexId,
										true, NULL, 1, &child_key);

		while (FUNC3(child_tuple = FUNC19(child_scan)))
		{
			Form_pg_constraint child_con = (Form_pg_constraint) FUNC2(child_tuple);
			HeapTuple	child_copy;

			if (child_con->contype != CONSTRAINT_CHECK)
				continue;

			if (FUNC16(FUNC4(parent_con->conname),
					   FUNC4(child_con->conname)) != 0)
				continue;

			if (!FUNC10(parent_tuple, child_tuple, tuple_desc))
				FUNC11(ERROR,
						(FUNC12(ERRCODE_DATATYPE_MISMATCH),
						 FUNC13("child table \"%s\" has different definition for check constraint \"%s\"",
								FUNC7(child_rel),
								FUNC4(parent_con->conname))));

			/* If the child constraint is "no inherit" then cannot merge */
			if (child_con->connoinherit)
				FUNC11(ERROR,
						(FUNC12(ERRCODE_INVALID_OBJECT_DEFINITION),
						 FUNC13("constraint \"%s\" conflicts with non-inherited constraint on child table \"%s\"",
								FUNC4(child_con->conname),
								FUNC7(child_rel))));

			/*
			 * If the child constraint is "not valid" then cannot merge with a
			 * valid parent constraint
			 */
			if (parent_con->convalidated && !child_con->convalidated)
				FUNC11(ERROR,
						(FUNC12(ERRCODE_INVALID_OBJECT_DEFINITION),
						 FUNC13("constraint \"%s\" conflicts with NOT VALID constraint on child table \"%s\"",
								FUNC4(child_con->conname),
								FUNC7(child_rel))));

			/*
			 * OK, bump the child constraint's inheritance count.  (If we fail
			 * later on, this change will just roll back.)
			 */
			child_copy = FUNC14(child_tuple);
			child_con = (Form_pg_constraint) FUNC2(child_copy);
			child_con->coninhcount++;

			/*
			 * In case of partitions, an inherited constraint must be
			 * inherited only once since it cannot have multiple parents and
			 * it is never considered local.
			 */
			if (child_is_partition)
			{
				FUNC0(child_con->coninhcount == 1);
				child_con->conislocal = false;
			}

			FUNC1(catalog_relation, &child_copy->t_self, child_copy);
			FUNC15(child_copy);

			found = true;
			break;
		}

		FUNC18(child_scan);

		if (!found)
			FUNC11(ERROR,
					(FUNC12(ERRCODE_DATATYPE_MISMATCH),
					 FUNC13("child table is missing constraint \"%s\"",
							FUNC4(parent_con->conname))));
	}

	FUNC18(parent_scan);
	FUNC20(catalog_relation, RowExclusiveLock);
}