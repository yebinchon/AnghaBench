#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  reloftype; } ;
struct TYPE_18__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_17__ {TYPE_1__* rd_rel; } ;
struct TYPE_16__ {int /*<<< orphan*/  reloftype; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  TYPE_3__* HeapTuple ;
typedef  TYPE_4__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TypeRelationId ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(Relation rel, LOCKMODE lockmode)
{
	Oid			relid = FUNC7(rel);
	Relation	relationRelation;
	HeapTuple	tuple;

	if (!FUNC5(rel->rd_rel->reloftype))
		FUNC11(ERROR,
				(FUNC12(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC13("\"%s\" is not a typed table",
						FUNC6(rel))));

	/*
	 * We don't bother to check ownership of the type --- ownership of the
	 * table is presumed enough rights.  No lock required on the type, either.
	 */

	FUNC9(relid, TypeRelationId, rel->rd_rel->reloftype,
						   DEPENDENCY_NORMAL);

	/* Clear pg_class.reloftype */
	relationRelation = FUNC16(RelationRelationId, RowExclusiveLock);
	tuple = FUNC8(RELOID, FUNC4(relid));
	if (!FUNC2(tuple))
		FUNC10(ERROR, "cache lookup failed for relation %u", relid);
	((Form_pg_class) FUNC1(tuple))->reloftype = InvalidOid;
	FUNC0(relationRelation, &tuple->t_self, tuple);

	FUNC3(RelationRelationId, relid, 0);

	FUNC14(tuple);
	FUNC15(relationRelation, RowExclusiveLock);
}