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
typedef  size_t uint32 ;
typedef  scalar_t__ TransactionId ;
struct TYPE_3__ {size_t xcnt; scalar_t__* xip; int /*<<< orphan*/  xmax; int /*<<< orphan*/  xmin; } ;
typedef  TYPE_1__* Snapshot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7(TransactionId xid)
{
	Snapshot	snap;
	uint32		i;

	FUNC0(FUNC5(xid));
	FUNC0(!FUNC3(xid, FUNC1()));

	snap = FUNC2();

	if (FUNC6(xid, snap->xmin))
		return false;

	if (FUNC4(xid, snap->xmax))
		return true;

	for (i = 0; i < snap->xcnt; i++)
	{
		if (xid == snap->xip[i])
			return true;
	}

	return false;
}