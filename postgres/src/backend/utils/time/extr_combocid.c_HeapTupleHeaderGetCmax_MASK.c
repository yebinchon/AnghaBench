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
struct TYPE_5__ {int t_infomask; } ;
typedef  TYPE_1__* HeapTupleHeader ;
typedef  int /*<<< orphan*/  CommandId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CritSectionCount ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int HEAP_COMBOCID ; 
 int HEAP_MOVED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

CommandId
FUNC5(HeapTupleHeader tup)
{
	CommandId	cid = FUNC2(tup);

	FUNC0(!(tup->t_infomask & HEAP_MOVED));

	/*
	 * Because GetUpdateXid() performs memory allocations if xmax is a
	 * multixact we can't Assert() if we're inside a critical section. This
	 * weakens the check, but not using GetCmax() inside one would complicate
	 * things too much.
	 */
	FUNC0(CritSectionCount > 0 ||
		   FUNC4(FUNC3(tup)));

	if (tup->t_infomask & HEAP_COMBOCID)
		return FUNC1(cid);
	else
		return cid;
}