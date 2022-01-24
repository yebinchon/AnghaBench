#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_3__ {int /*<<< orphan*/  off; int /*<<< orphan*/  tuple; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
typedef  TYPE_2__ BufferHeapTupleTableSlot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(TupleTableSlot *slot, int natts)
{
	BufferHeapTupleTableSlot *bslot = (BufferHeapTupleTableSlot *) slot;

	FUNC0(!FUNC1(slot));

	FUNC2(slot, bslot->base.tuple, &bslot->base.off, natts);
}