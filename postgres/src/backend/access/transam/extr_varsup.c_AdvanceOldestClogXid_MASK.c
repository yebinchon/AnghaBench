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
struct TYPE_2__ {int /*<<< orphan*/  oldestClogXid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLogTruncationLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_1__* ShmemVariableCache ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(TransactionId oldest_datfrozenxid)
{
	FUNC0(CLogTruncationLock, LW_EXCLUSIVE);
	if (FUNC2(ShmemVariableCache->oldestClogXid,
							  oldest_datfrozenxid))
	{
		ShmemVariableCache->oldestClogXid = oldest_datfrozenxid;
	}
	FUNC1(CLogTruncationLock);
}