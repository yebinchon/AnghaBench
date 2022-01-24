#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ reltablespace; } ;
struct TYPE_17__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_16__ {TYPE_1__* rd_rel; } ;
struct TYPE_15__ {scalar_t__ reltablespace; int /*<<< orphan*/  relkind; } ;
typedef  TYPE_2__* Relation ;
typedef  scalar_t__ Oid ;
typedef  TYPE_3__* HeapTuple ;
typedef  TYPE_4__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ GLOBALTABLESPACE_OID ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ MyDatabaseTableSpace ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RELOID ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(Relation rel, Oid newTableSpace)
{
	HeapTuple	tuple;
	Oid			oldTableSpace;
	Relation	pg_class;
	Form_pg_class rd_rel;
	Oid			reloid = FUNC8(rel);

	/*
	 * Shouldn't be called on relations having storage; these are processed in
	 * phase 3.
	 */
	FUNC0(!FUNC7(rel->rd_rel->relkind));

	/* Can't allow a non-shared relation in pg_global */
	if (newTableSpace == GLOBALTABLESPACE_OID)
		FUNC11(ERROR,
				(FUNC12(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC13("only shared relations can be placed in pg_global tablespace")));

	/*
	 * No work if no change in tablespace.
	 */
	oldTableSpace = rel->rd_rel->reltablespace;
	if (newTableSpace == oldTableSpace ||
		(newTableSpace == MyDatabaseTableSpace && oldTableSpace == 0))
	{
		FUNC5(RelationRelationId, reloid, 0);
		return;
	}

	/* Get a modifiable copy of the relation's pg_class row */
	pg_class = FUNC16(RelationRelationId, RowExclusiveLock);

	tuple = FUNC9(RELOID, FUNC6(reloid));
	if (!FUNC4(tuple))
		FUNC10(ERROR, "cache lookup failed for relation %u", reloid);
	rd_rel = (Form_pg_class) FUNC3(tuple);

	/* update the pg_class row */
	rd_rel->reltablespace = (newTableSpace == MyDatabaseTableSpace) ? InvalidOid : newTableSpace;
	FUNC1(pg_class, &tuple->t_self, tuple);

	FUNC5(RelationRelationId, reloid, 0);

	FUNC14(tuple);

	FUNC15(pg_class, RowExclusiveLock);

	/* Make sure the reltablespace change is visible */
	FUNC2();
}