#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32 ;
struct TYPE_5__ {scalar_t__* fpRelId; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  LOCKMODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t,int /*<<< orphan*/ ) ; 
 size_t FP_LOCK_SLOTS_PER_BACKEND ; 
 int /*<<< orphan*/  FastPathLocalUseCount ; 
 TYPE_1__* MyProc ; 

__attribute__((used)) static bool
FUNC4(Oid relid, LOCKMODE lockmode)
{
	uint32		f;
	uint32		unused_slot = FP_LOCK_SLOTS_PER_BACKEND;

	/* Scan for existing entry for this relid, remembering empty slot. */
	for (f = 0; f < FP_LOCK_SLOTS_PER_BACKEND; f++)
	{
		if (FUNC2(MyProc, f) == 0)
			unused_slot = f;
		else if (MyProc->fpRelId[f] == relid)
		{
			FUNC0(!FUNC1(MyProc, f, lockmode));
			FUNC3(MyProc, f, lockmode);
			return true;
		}
	}

	/* If no existing entry, use any empty slot. */
	if (unused_slot < FP_LOCK_SLOTS_PER_BACKEND)
	{
		MyProc->fpRelId[unused_slot] = relid;
		FUNC3(MyProc, unused_slot, lockmode);
		++FastPathLocalUseCount;
		return true;
	}

	/* No existing entry, and no empty slot. */
	return false;
}