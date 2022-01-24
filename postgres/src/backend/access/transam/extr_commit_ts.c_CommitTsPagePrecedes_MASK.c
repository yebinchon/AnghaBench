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
typedef  int TransactionId ;

/* Variables and functions */
 int COMMIT_TS_XACTS_PER_PAGE ; 
 scalar_t__ FirstNormalTransactionId ; 
 int FUNC0 (int,int) ; 

__attribute__((used)) static bool
FUNC1(int page1, int page2)
{
	TransactionId xid1;
	TransactionId xid2;

	xid1 = ((TransactionId) page1) * COMMIT_TS_XACTS_PER_PAGE;
	xid1 += FirstNormalTransactionId;
	xid2 = ((TransactionId) page2) * COMMIT_TS_XACTS_PER_PAGE;
	xid2 += FirstNormalTransactionId;

	return FUNC0(xid1, xid2);
}