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
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_9__ {TYPE_1__* rd_rel; } ;
struct TYPE_8__ {char relpersistence; int /*<<< orphan*/  reltablespace; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MultiXactId ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(Relation OldHeap, Oid indexOid, bool verbose)
{
	Oid			tableOid = FUNC2(OldHeap);
	Oid			tableSpace = OldHeap->rd_rel->reltablespace;
	Oid			OIDNewHeap;
	char		relpersistence;
	bool		is_system_catalog;
	bool		swap_toast_by_content;
	TransactionId frozenXid;
	MultiXactId cutoffMulti;

	/* Mark the correct index as clustered */
	if (FUNC1(indexOid))
		FUNC6(OldHeap, indexOid, true);

	/* Remember info about rel before closing OldHeap */
	relpersistence = OldHeap->rd_rel->relpersistence;
	is_system_catalog = FUNC0(OldHeap);

	/* Close relcache entry, but keep lock until transaction commit */
	FUNC7(OldHeap, NoLock);

	/* Create the transient table that will receive the re-ordered data */
	OIDNewHeap = FUNC5(tableOid, tableSpace,
							   relpersistence,
							   AccessExclusiveLock);

	/* Copy the heap data into the new table in the desired order */
	FUNC3(OIDNewHeap, tableOid, indexOid, verbose,
					&swap_toast_by_content, &frozenXid, &cutoffMulti);

	/*
	 * Swap the physical files of the target and transient tables, then
	 * rebuild the target's indexes and throw away the transient table.
	 */
	FUNC4(tableOid, OIDNewHeap, is_system_catalog,
					 swap_toast_by_content, false, true,
					 frozenXid, cutoffMulti,
					 relpersistence);
}