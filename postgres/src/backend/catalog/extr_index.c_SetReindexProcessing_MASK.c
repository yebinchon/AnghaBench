#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  currentlyReindexedHeap ; 
 int /*<<< orphan*/  currentlyReindexedIndex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(Oid heapOid, Oid indexOid)
{
	FUNC0(FUNC1(heapOid) && FUNC1(indexOid));
	/* Reindexing is not re-entrant. */
	if (FUNC1(currentlyReindexedHeap))
		FUNC3(ERROR, "cannot reindex while reindexing");
	currentlyReindexedHeap = heapOid;
	currentlyReindexedIndex = indexOid;
	/* Index is no longer "pending" reindex. */
	FUNC2(indexOid);
}