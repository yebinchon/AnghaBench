#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  t_self; int /*<<< orphan*/  t_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  dbNode; } ;
struct TYPE_8__ {int /*<<< orphan*/  rd_id; TYPE_1__ rd_node; int /*<<< orphan*/ * rd_index; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  PREDICATELOCKTARGETTAG ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  TYPE_3__* HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(Relation relation, HeapTuple tuple, Snapshot snapshot)
{
	PREDICATELOCKTARGETTAG tag;
	ItemPointer tid;

	if (!FUNC7(relation, snapshot))
		return;

	/*
	 * If it's a heap tuple, return if this xact wrote it.
	 */
	if (relation->rd_index == NULL)
	{
		/* If we wrote it; we already have a write lock. */
		if (FUNC8(FUNC0(tuple->t_data)))
			return;
	}

	/*
	 * Do quick-but-not-definitive test for a relation lock first.  This will
	 * never cause a return when the relation is *not* locked, but will
	 * occasionally let the check continue when there really *is* a relation
	 * level lock.
	 */
	FUNC5(tag,
										relation->rd_node.dbNode,
										relation->rd_id);
	if (FUNC4(&tag))
		return;

	tid = &(tuple->t_self);
	FUNC6(tag,
									 relation->rd_node.dbNode,
									 relation->rd_id,
									 FUNC1(tid),
									 FUNC2(tid));
	FUNC3(&tag);
}