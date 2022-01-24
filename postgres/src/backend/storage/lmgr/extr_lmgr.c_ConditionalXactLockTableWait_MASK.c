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
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  LOCKTAG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ LOCKACQUIRE_NOT_AVAIL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ShareLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (long) ; 

bool
FUNC10(TransactionId xid)
{
	LOCKTAG		tag;
	bool		first = true;

	for (;;)
	{
		FUNC0(FUNC8(xid));
		FUNC0(!FUNC6(xid, FUNC1()));

		FUNC4(tag, xid);

		if (FUNC2(&tag, ShareLock, false, true) == LOCKACQUIRE_NOT_AVAIL)
			return false;

		FUNC3(&tag, ShareLock, false);

		if (!FUNC7(xid))
			break;

		/* See XactLockTableWait about this case */
		if (!first)
			FUNC9(1000L);
		first = false;
		xid = FUNC5(xid);
	}

	return true;
}