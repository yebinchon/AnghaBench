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
typedef  scalar_t__ TransactionId ;
struct TYPE_5__ {TYPE_1__* shared; } ;
struct TYPE_4__ {int* page_dirty; scalar_t__* page_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int FUNC3 (TYPE_2__*,int,int,scalar_t__) ; 
 TYPE_2__* SubTransCtl ; 
 int /*<<< orphan*/  SubtransControlLock ; 
 int FUNC4 (scalar_t__,scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 

void
FUNC8(TransactionId xid, TransactionId parent)
{
	int			pageno = FUNC7(xid);
	int			entryno = FUNC6(xid);
	int			slotno;
	TransactionId *ptr;

	FUNC0(FUNC5(parent));
	FUNC0(FUNC4(xid, parent));

	FUNC1(SubtransControlLock, LW_EXCLUSIVE);

	slotno = FUNC3(SubTransCtl, pageno, true, xid);
	ptr = (TransactionId *) SubTransCtl->shared->page_buffer[slotno];
	ptr += entryno;

	/*
	 * It's possible we'll try to set the parent xid multiple times but we
	 * shouldn't ever be changing the xid from one valid xid to another valid
	 * xid, which would corrupt the data structure.
	 */
	if (*ptr != parent)
	{
		FUNC0(*ptr == InvalidTransactionId);
		*ptr = parent;
		SubTransCtl->shared->page_dirty[slotno] = true;
	}

	FUNC2(SubtransControlLock);
}