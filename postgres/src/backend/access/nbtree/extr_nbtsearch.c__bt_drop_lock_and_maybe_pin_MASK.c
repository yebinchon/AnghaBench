#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  buf; } ;
struct TYPE_5__ {int /*<<< orphan*/  xs_want_itup; int /*<<< orphan*/  indexRelation; int /*<<< orphan*/  xs_snapshot; } ;
typedef  TYPE_1__* IndexScanDesc ;
typedef  TYPE_2__* BTScanPos ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(IndexScanDesc scan, BTScanPos sp)
{
	FUNC1(sp->buf, BUFFER_LOCK_UNLOCK);

	if (FUNC0(scan->xs_snapshot) &&
		FUNC2(scan->indexRelation) &&
		!scan->xs_want_itup)
	{
		FUNC3(sp->buf);
		sp->buf = InvalidBuffer;
	}
}