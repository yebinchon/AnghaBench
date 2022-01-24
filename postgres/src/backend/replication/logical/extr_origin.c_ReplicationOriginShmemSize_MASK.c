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
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  ReplicationState ;

/* Variables and functions */
 int /*<<< orphan*/  ReplicationStateCtl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ max_replication_slots ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  states ; 

Size
FUNC3(void)
{
	Size		size = 0;

	/*
	 * XXX: max_replication_slots is arguably the wrong thing to use, as here
	 * we keep the replay state of *remote* transactions. But for now it seems
	 * sufficient to reuse it, lest we introduce a separate GUC.
	 */
	if (max_replication_slots == 0)
		return size;

	size = FUNC0(size, FUNC2(ReplicationStateCtl, states));

	size = FUNC0(size,
					FUNC1(max_replication_slots, sizeof(ReplicationState)));
	return size;
}