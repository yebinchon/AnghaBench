#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_2__ {int /*<<< orphan*/  oldestXidDB; int /*<<< orphan*/  oldestXid; int /*<<< orphan*/  xidVacLimit; int /*<<< orphan*/  nextFullXid; } ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  DATABASEOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* ShmemVariableCache ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XidGenLock ; 

bool
FUNC8(void)
{
	TransactionId nextXid;
	TransactionId xidVacLimit;
	TransactionId oldestXid;
	Oid			oldestXidDB;

	/* Locking is probably not really necessary, but let's be careful */
	FUNC0(XidGenLock, LW_SHARED);
	nextXid = FUNC7(ShmemVariableCache->nextFullXid);
	xidVacLimit = ShmemVariableCache->xidVacLimit;
	oldestXid = ShmemVariableCache->oldestXid;
	oldestXidDB = ShmemVariableCache->oldestXidDB;
	FUNC1(XidGenLock);

	if (!FUNC5(oldestXid))
		return true;			/* shouldn't happen, but just in case */
	if (!FUNC6(xidVacLimit))
		return true;			/* this shouldn't happen anymore either */
	if (FUNC4(nextXid, xidVacLimit))
		return true;			/* past xidVacLimit, don't delay updating */
	if (!FUNC3(DATABASEOID, FUNC2(oldestXidDB)))
		return true;			/* could happen, per comments above */
	return false;
}