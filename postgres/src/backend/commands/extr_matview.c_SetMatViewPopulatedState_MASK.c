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
struct TYPE_18__ {int relispopulated; } ;
struct TYPE_17__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_16__ {TYPE_1__* rd_rel; } ;
struct TYPE_15__ {scalar_t__ relkind; } ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__* HeapTuple ;
typedef  TYPE_4__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ RELKIND_MATVIEW ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC12(Relation relation, bool newstate)
{
	Relation	pgrel;
	HeapTuple	tuple;

	FUNC0(relation->rd_rel->relkind == RELKIND_MATVIEW);

	/*
	 * Update relation's pg_class entry.  Crucial side-effect: other backends
	 * (and this one too!) are sent SI message to make them rebuild relcache
	 * entries.
	 */
	pgrel = FUNC11(RelationRelationId, RowExclusiveLock);
	tuple = FUNC7(RELOID,
								FUNC5(FUNC6(relation)));
	if (!FUNC4(tuple))
		FUNC8(ERROR, "cache lookup failed for relation %u",
			 FUNC6(relation));

	((Form_pg_class) FUNC3(tuple))->relispopulated = newstate;

	FUNC1(pgrel, &tuple->t_self, tuple);

	FUNC9(tuple);
	FUNC10(pgrel, RowExclusiveLock);

	/*
	 * Advance command counter to make the updated pg_class row locally
	 * visible.
	 */
	FUNC2();
}