#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int relhassubclass; } ;
struct TYPE_9__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC10(Oid relationId, bool relhassubclass)
{
	Relation	relationRelation;
	HeapTuple	tuple;
	Form_pg_class classtuple;

	/*
	 * Fetch a modifiable copy of the tuple, modify it, update pg_class.
	 */
	relationRelation = FUNC9(RelationRelationId, RowExclusiveLock);
	tuple = FUNC5(RELOID, FUNC4(relationId));
	if (!FUNC3(tuple))
		FUNC6(ERROR, "cache lookup failed for relation %u", relationId);
	classtuple = (Form_pg_class) FUNC2(tuple);

	if (classtuple->relhassubclass != relhassubclass)
	{
		classtuple->relhassubclass = relhassubclass;
		FUNC1(relationRelation, &tuple->t_self, tuple);
	}
	else
	{
		/* no need to change tuple, but force relcache rebuild anyway */
		FUNC0(tuple);
	}

	FUNC7(tuple);
	FUNC8(relationRelation, RowExclusiveLock);
}