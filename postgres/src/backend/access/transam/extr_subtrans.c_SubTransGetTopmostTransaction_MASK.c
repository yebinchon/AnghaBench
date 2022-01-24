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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TransactionXmin ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

TransactionId
FUNC6(TransactionId xid)
{
	TransactionId parentXid = xid,
				previousXid = xid;

	/* Can't ask about stuff that might not be around anymore */
	FUNC0(FUNC2(xid, TransactionXmin));

	while (FUNC3(parentXid))
	{
		previousXid = parentXid;
		if (FUNC4(parentXid, TransactionXmin))
			break;
		parentXid = FUNC1(parentXid);

		/*
		 * By convention the parent xid gets allocated first, so should always
		 * precede the child xid. Anything else points to a corrupted data
		 * structure that could lead to an infinite loop, so exit.
		 */
		if (!FUNC4(parentXid, previousXid))
			FUNC5(ERROR, "pg_subtrans contains invalid entry: xid %u points to parent xid %u",
				 previousXid, parentXid);
	}

	FUNC0(FUNC3(previousXid));

	return previousXid;
}