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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(TransactionId xid, int nsubxids,
							TransactionId *subxids)
{
	int			i;

	if (FUNC2(xid))
		FUNC1(xid);

	for (i = 0; i < nsubxids; i++)
		FUNC1(subxids[i]);

	/* Opportunistically compress the array */
	FUNC0(false);
}