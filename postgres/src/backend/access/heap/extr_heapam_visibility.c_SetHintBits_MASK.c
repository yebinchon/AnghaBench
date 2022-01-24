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
typedef  int /*<<< orphan*/  uint16 ;
typedef  scalar_t__ XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_3__ {int /*<<< orphan*/  t_infomask; } ;
typedef  TYPE_1__* HeapTupleHeader ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static inline void
FUNC6(HeapTupleHeader tuple, Buffer buffer,
			uint16 infomask, TransactionId xid)
{
	if (FUNC4(xid))
	{
		/* NB: xid must be known committed here! */
		XLogRecPtr	commitLSN = FUNC3(xid);

		if (FUNC1(buffer) && FUNC5(commitLSN) &&
			FUNC0(buffer) < commitLSN)
		{
			/* not flushed and no LSN interlock, so don't set hint */
			return;
		}
	}

	tuple->t_infomask |= infomask;
	FUNC2(buffer, true);
}