#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* rd_rel; } ;
struct TYPE_8__ {scalar_t__ relkind; int /*<<< orphan*/  reltoastrelid; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void
FUNC5(Relation rel)
{
	Oid			toastrelid;

	/*
	 * Truncate the relation.  Partitioned tables have no storage, so there is
	 * nothing to do for them here.
	 */
	if (rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
		return;

	/* Truncate the underlying relation */
	FUNC4(rel);

	/* If the relation has indexes, truncate the indexes too */
	FUNC1(rel);

	/* If there is a toast table, truncate that too */
	toastrelid = rel->rd_rel->reltoastrelid;
	if (FUNC0(toastrelid))
	{
		Relation	toastrel = FUNC3(toastrelid, AccessExclusiveLock);

		FUNC4(toastrel);
		FUNC1(toastrel);
		/* keep the lock... */
		FUNC2(toastrel, NoLock);
	}
}