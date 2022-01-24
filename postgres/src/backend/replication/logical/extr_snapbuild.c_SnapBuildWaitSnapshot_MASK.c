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
struct TYPE_3__ {int xcnt; int /*<<< orphan*/ * xids; } ;
typedef  TYPE_1__ xl_running_xacts ;
typedef  int /*<<< orphan*/  TransactionId ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLTW_None ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(xl_running_xacts *running, TransactionId cutoff)
{
	int			off;

	for (off = 0; off < running->xcnt; off++)
	{
		TransactionId xid = running->xids[off];

		/*
		 * Upper layers should prevent that we ever need to wait on ourselves.
		 * Check anyway, since failing to do so would either result in an
		 * endless wait or an Assert() failure.
		 */
		if (FUNC3(xid))
			FUNC5(ERROR, "waiting for ourselves");

		if (FUNC2(xid, cutoff))
			continue;

		FUNC4(xid, NULL, NULL, XLTW_None);
	}

	/*
	 * All transactions we needed to finish finished - try to ensure there is
	 * another xl_running_xacts record in a timely manner, without having to
	 * write for bgwriter or checkpointer to log one.  During recovery we
	 * can't enforce that, so we'll have to wait.
	 */
	if (!FUNC1())
	{
		FUNC0();
	}
}