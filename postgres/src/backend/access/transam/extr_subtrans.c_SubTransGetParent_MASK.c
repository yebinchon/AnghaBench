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
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_5__ {TYPE_1__* shared; } ;
struct TYPE_4__ {scalar_t__* page_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* SubTransCtl ; 
 int /*<<< orphan*/  SubtransControlLock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TransactionXmin ; 

TransactionId
FUNC7(TransactionId xid)
{
	int			pageno = FUNC6(xid);
	int			entryno = FUNC5(xid);
	int			slotno;
	TransactionId *ptr;
	TransactionId parent;

	/* Can't ask about stuff that might not be around anymore */
	FUNC0(FUNC3(xid, TransactionXmin));

	/* Bootstrap and frozen XIDs have no parent */
	if (!FUNC4(xid))
		return InvalidTransactionId;

	/* lock is acquired by SimpleLruReadPage_ReadOnly */

	slotno = FUNC2(SubTransCtl, pageno, xid);
	ptr = (TransactionId *) SubTransCtl->shared->page_buffer[slotno];
	ptr += entryno;

	parent = *ptr;

	FUNC1(SubtransControlLock);

	return parent;
}