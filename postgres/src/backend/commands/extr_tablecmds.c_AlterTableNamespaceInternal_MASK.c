#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* rd_rel; } ;
struct TYPE_12__ {scalar_t__ relkind; int /*<<< orphan*/  reltype; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddresses ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ RELKIND_MATVIEW ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 scalar_t__ RELKIND_RELATION ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(Relation rel, Oid oldNspOid, Oid nspOid,
							ObjectAddresses *objsMoved)
{
	Relation	classRel;

	FUNC5(objsMoved != NULL);

	/* OK, modify the pg_class row and pg_depend entry */
	classRel = FUNC8(RelationRelationId, RowExclusiveLock);

	FUNC2(classRel, FUNC6(rel), oldNspOid,
								   nspOid, true, objsMoved);

	/* Fix the table's row type too */
	FUNC4(rel->rd_rel->reltype,
							   nspOid, false, false, objsMoved);

	/* Fix other dependent stuff */
	if (rel->rd_rel->relkind == RELKIND_RELATION ||
		rel->rd_rel->relkind == RELKIND_MATVIEW ||
		rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
	{
		FUNC1(classRel, rel, oldNspOid, nspOid, objsMoved);
		FUNC3(classRel, rel, oldNspOid, nspOid,
						   objsMoved, AccessExclusiveLock);
		FUNC0(FUNC6(rel), oldNspOid, nspOid,
								  false, objsMoved);
	}

	FUNC7(classRel, RowExclusiveLock);
}