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
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INDEX_DROP_SET_DEAD ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  ShareUpdateExclusiveLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(Oid heapId, Oid indexId)
{
	Relation	userHeapRelation;
	Relation	userIndexRelation;

	/*
	 * No more predicate locks will be acquired on this index, and we're about
	 * to stop doing inserts into the index which could show conflicts with
	 * existing predicate locks, so now is the time to move them to the heap
	 * relation.
	 */
	userHeapRelation = FUNC6(heapId, ShareUpdateExclusiveLock);
	userIndexRelation = FUNC3(indexId, ShareUpdateExclusiveLock);
	FUNC1(userIndexRelation);

	/*
	 * Now we are sure that nobody uses the index for queries; they just might
	 * have it open for updating it.  So now we can unset indisready and
	 * indislive, then wait till nobody could be using it at all anymore.
	 */
	FUNC4(indexId, INDEX_DROP_SET_DEAD);

	/*
	 * Invalidate the relcache for the table, so that after this commit all
	 * sessions will refresh the table's index list.  Forgetting just the
	 * index's relcache entry is not enough.
	 */
	FUNC0(userHeapRelation);

	/*
	 * Close the relations again, though still holding session lock.
	 */
	FUNC5(userHeapRelation, NoLock);
	FUNC2(userIndexRelation, NoLock);
}