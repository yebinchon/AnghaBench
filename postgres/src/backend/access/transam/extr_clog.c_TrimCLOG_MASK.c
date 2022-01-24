#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_7__ {int /*<<< orphan*/  nextFullXid; } ;
struct TYPE_6__ {TYPE_1__* shared; } ;
struct TYPE_5__ {int latest_page_number; char** page_buffer; int* page_dirty; } ;

/* Variables and functions */
 int BLCKSZ ; 
 int CLOG_BITS_PER_XACT ; 
 int /*<<< orphan*/  CLogControlLock ; 
 TYPE_2__* ClogCtl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* ShmemVariableCache ; 
 int FUNC3 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(void)
{
	TransactionId xid = FUNC8(ShmemVariableCache->nextFullXid);
	int			pageno = FUNC6(xid);

	FUNC0(CLogControlLock, LW_EXCLUSIVE);

	/*
	 * Re-Initialize our idea of the latest page number.
	 */
	ClogCtl->shared->latest_page_number = pageno;

	/*
	 * Zero out the remainder of the current clog page.  Under normal
	 * circumstances it should be zeroes already, but it seems at least
	 * theoretically possible that XLOG replay will have settled on a nextXID
	 * value that is less than the last XID actually used and marked by the
	 * previous database lifecycle (since subtransaction commit writes clog
	 * but makes no WAL entry).  Let's just be safe. (We need not worry about
	 * pages beyond the current one, since those will be zeroed when first
	 * used.  For the same reason, there is no need to do anything when
	 * nextFullXid is exactly at a page boundary; and it's likely that the
	 * "current" page doesn't exist yet in that case.)
	 */
	if (FUNC7(xid) != 0)
	{
		int			byteno = FUNC5(xid);
		int			bshift = FUNC4(xid) * CLOG_BITS_PER_XACT;
		int			slotno;
		char	   *byteptr;

		slotno = FUNC3(ClogCtl, pageno, false, xid);
		byteptr = ClogCtl->shared->page_buffer[slotno] + byteno;

		/* Zero so-far-unused positions in the current byte */
		*byteptr &= (1 << bshift) - 1;
		/* Zero the rest of the page */
		FUNC2(byteptr + 1, 0, BLCKSZ - byteno - 1);

		ClogCtl->shared->page_dirty[slotno] = true;
	}

	FUNC1(CLogControlLock);
}