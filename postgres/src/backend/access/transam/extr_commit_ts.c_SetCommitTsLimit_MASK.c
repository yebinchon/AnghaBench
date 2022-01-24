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
typedef  void* TransactionId ;
struct TYPE_2__ {scalar_t__ oldestCommitTsXid; void* newestCommitTsXid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CommitTsLock ; 
 scalar_t__ InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_1__* ShmemVariableCache ; 
 scalar_t__ FUNC3 (void*,void*) ; 

void
FUNC4(TransactionId oldestXact, TransactionId newestXact)
{
	/*
	 * Be careful not to overwrite values that are either further into the
	 * "future" or signal a disabled committs.
	 */
	FUNC1(CommitTsLock, LW_EXCLUSIVE);
	if (ShmemVariableCache->oldestCommitTsXid != InvalidTransactionId)
	{
		if (FUNC3(ShmemVariableCache->oldestCommitTsXid, oldestXact))
			ShmemVariableCache->oldestCommitTsXid = oldestXact;
		if (FUNC3(newestXact, ShmemVariableCache->newestCommitTsXid))
			ShmemVariableCache->newestCommitTsXid = newestXact;
	}
	else
	{
		FUNC0(ShmemVariableCache->newestCommitTsXid == InvalidTransactionId);
		ShmemVariableCache->oldestCommitTsXid = oldestXact;
		ShmemVariableCache->newestCommitTsXid = newestXact;
	}
	FUNC2(CommitTsLock);
}