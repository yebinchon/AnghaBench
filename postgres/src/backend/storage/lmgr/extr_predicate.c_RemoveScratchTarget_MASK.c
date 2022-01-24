#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HASH_REMOVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  PredicateLockTargetHash ; 
 int /*<<< orphan*/  ScratchPartitionLock ; 
 int /*<<< orphan*/  ScratchTargetTag ; 
 int /*<<< orphan*/  ScratchTargetTagHash ; 
 int /*<<< orphan*/  SerializablePredicateLockListLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC5(bool lockheld)
{
	bool		found;

	FUNC0(FUNC2(SerializablePredicateLockListLock));

	if (!lockheld)
		FUNC1(ScratchPartitionLock, LW_EXCLUSIVE);
	FUNC4(PredicateLockTargetHash,
								&ScratchTargetTag,
								ScratchTargetTagHash,
								HASH_REMOVE, &found);
	FUNC0(found);
	if (!lockheld)
		FUNC3(ScratchPartitionLock);
}