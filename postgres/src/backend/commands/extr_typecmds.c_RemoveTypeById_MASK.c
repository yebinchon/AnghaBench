#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ typtype; } ;
struct TYPE_7__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPEOID ; 
 scalar_t__ TYPTYPE_ENUM ; 
 scalar_t__ TYPTYPE_RANGE ; 
 int /*<<< orphan*/  TypeRelationId ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC11(Oid typeOid)
{
	Relation	relation;
	HeapTuple	tup;

	relation = FUNC10(TypeRelationId, RowExclusiveLock);

	tup = FUNC7(TYPEOID, FUNC4(typeOid));
	if (!FUNC3(tup))
		FUNC8(ERROR, "cache lookup failed for type %u", typeOid);

	FUNC0(relation, &tup->t_self);

	/*
	 * If it is an enum, delete the pg_enum entries too; we don't bother with
	 * making dependency entries for those, so it has to be done "by hand"
	 * here.
	 */
	if (((Form_pg_type) FUNC2(tup))->typtype == TYPTYPE_ENUM)
		FUNC1(typeOid);

	/*
	 * If it is a range type, delete the pg_range entry too; we don't bother
	 * with making a dependency entry for that, so it has to be done "by hand"
	 * here.
	 */
	if (((Form_pg_type) FUNC2(tup))->typtype == TYPTYPE_RANGE)
		FUNC5(typeOid);

	FUNC6(tup);

	FUNC9(relation, RowExclusiveLock);
}