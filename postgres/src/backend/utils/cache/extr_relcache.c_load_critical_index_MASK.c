#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int rd_isnailed; int rd_refcnt; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PANIC ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(Oid indexoid, Oid heapoid)
{
	Relation	ird;

	/*
	 * We must lock the underlying catalog before locking the index to avoid
	 * deadlock, since RelationBuildDesc might well need to read the catalog,
	 * and if anyone else is exclusive-locking this catalog and index they'll
	 * be doing it in that order.
	 */
	FUNC0(heapoid, AccessShareLock);
	FUNC0(indexoid, AccessShareLock);
	ird = FUNC1(indexoid, true);
	if (ird == NULL)
		FUNC3(PANIC, "could not open critical system index %u", indexoid);
	ird->rd_isnailed = true;
	ird->rd_refcnt = 1;
	FUNC2(indexoid, AccessShareLock);
	FUNC2(heapoid, AccessShareLock);
}