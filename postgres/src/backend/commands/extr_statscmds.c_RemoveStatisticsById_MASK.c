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
struct TYPE_8__ {int /*<<< orphan*/  stxrelid; } ;
struct TYPE_7__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_statistic_ext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  STATEXTDATASTXOID ; 
 int /*<<< orphan*/  STATEXTOID ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  StatisticExtDataRelationId ; 
 int /*<<< orphan*/  StatisticExtRelationId ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC10(Oid statsOid)
{
	Relation	relation;
	HeapTuple	tup;
	Form_pg_statistic_ext statext;
	Oid			relid;

	/*
	 * First delete the pg_statistic_ext_data tuple holding the actual
	 * statistical data.
	 */
	relation = FUNC9(StatisticExtDataRelationId, RowExclusiveLock);

	tup = FUNC6(STATEXTDATASTXOID, FUNC4(statsOid));

	if (!FUNC3(tup)) /* should not happen */
		FUNC7(ERROR, "cache lookup failed for statistics data %u", statsOid);

	FUNC1(relation, &tup->t_self);

	FUNC5(tup);

	FUNC8(relation, RowExclusiveLock);

	/*
	 * Delete the pg_statistic_ext tuple.  Also send out a cache inval on the
	 * associated table, so that dependent plans will be rebuilt.
	 */
	relation = FUNC9(StatisticExtRelationId, RowExclusiveLock);

	tup = FUNC6(STATEXTOID, FUNC4(statsOid));

	if (!FUNC3(tup)) /* should not happen */
		FUNC7(ERROR, "cache lookup failed for statistics object %u", statsOid);

	statext = (Form_pg_statistic_ext) FUNC2(tup);
	relid = statext->stxrelid;

	FUNC0(relid);

	FUNC1(relation, &tup->t_self);

	FUNC5(tup);

	FUNC8(relation, RowExclusiveLock);
}