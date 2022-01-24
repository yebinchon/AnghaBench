#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char XidStatus ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_5__ {TYPE_1__* shared; } ;
struct TYPE_4__ {char** page_buffer; int /*<<< orphan*/ * group_lsn; } ;

/* Variables and functions */
 int CLOG_BITS_PER_XACT ; 
 char CLOG_XACT_BITMASK ; 
 int /*<<< orphan*/  CLogControlLock ; 
 TYPE_2__* ClogCtl ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

XidStatus
FUNC6(TransactionId xid, XLogRecPtr *lsn)
{
	int			pageno = FUNC5(xid);
	int			byteno = FUNC4(xid);
	int			bshift = FUNC3(xid) * CLOG_BITS_PER_XACT;
	int			slotno;
	int			lsnindex;
	char	   *byteptr;
	XidStatus	status;

	/* lock is acquired by SimpleLruReadPage_ReadOnly */

	slotno = FUNC2(ClogCtl, pageno, xid);
	byteptr = ClogCtl->shared->page_buffer[slotno] + byteno;

	status = (*byteptr >> bshift) & CLOG_XACT_BITMASK;

	lsnindex = FUNC0(slotno, xid);
	*lsn = ClogCtl->shared->group_lsn[lsnindex];

	FUNC1(CLogControlLock);

	return status;
}