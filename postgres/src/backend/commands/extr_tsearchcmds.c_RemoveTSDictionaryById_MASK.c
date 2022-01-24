#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSDICTOID ; 
 int /*<<< orphan*/  TSDictionaryRelationId ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(Oid dictId)
{
	Relation	relation;
	HeapTuple	tup;

	relation = FUNC7(TSDictionaryRelationId, RowExclusiveLock);

	tup = FUNC4(TSDICTOID, FUNC2(dictId));

	if (!FUNC1(tup))
		FUNC5(ERROR, "cache lookup failed for text search dictionary %u",
			 dictId);

	FUNC0(relation, &tup->t_self);

	FUNC3(tup);

	FUNC6(relation, RowExclusiveLock);
}