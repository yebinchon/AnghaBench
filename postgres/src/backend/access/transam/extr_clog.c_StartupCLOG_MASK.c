#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_6__ {TYPE_1__* shared; } ;
struct TYPE_5__ {int /*<<< orphan*/  nextFullXid; } ;
struct TYPE_4__ {int latest_page_number; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLogControlLock ; 
 TYPE_3__* ClogCtl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_2__* ShmemVariableCache ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(void)
{
	TransactionId xid = FUNC3(ShmemVariableCache->nextFullXid);
	int			pageno = FUNC2(xid);

	FUNC0(CLogControlLock, LW_EXCLUSIVE);

	/*
	 * Initialize our idea of the latest page number.
	 */
	ClogCtl->shared->latest_page_number = pageno;

	FUNC1(CLogControlLock);
}