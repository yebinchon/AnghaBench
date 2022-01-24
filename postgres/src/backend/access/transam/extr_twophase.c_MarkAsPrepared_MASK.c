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
struct TYPE_5__ {int /*<<< orphan*/ * allProcs; } ;
struct TYPE_4__ {int valid; size_t pgprocno; } ;
typedef  TYPE_1__* GlobalTransaction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* ProcGlobal ; 
 int /*<<< orphan*/  TwoPhaseStateLock ; 

__attribute__((used)) static void
FUNC4(GlobalTransaction gxact, bool lock_held)
{
	/* Lock here may be overkill, but I'm not convinced of that ... */
	if (!lock_held)
		FUNC1(TwoPhaseStateLock, LW_EXCLUSIVE);
	FUNC0(!gxact->valid);
	gxact->valid = true;
	if (!lock_held)
		FUNC2(TwoPhaseStateLock);

	/*
	 * Put it into the global ProcArray so TransactionIdIsInProgress considers
	 * the XID as still running.
	 */
	FUNC3(&ProcGlobal->allProcs[gxact->pgprocno]);
}