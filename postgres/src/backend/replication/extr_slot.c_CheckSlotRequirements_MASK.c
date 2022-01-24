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
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ WAL_LEVEL_REPLICA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ max_replication_slots ; 
 scalar_t__ wal_level ; 

void
FUNC3(void)
{
	/*
	 * NB: Adding a new requirement likely means that RestoreSlotFromDisk()
	 * needs the same check.
	 */

	if (max_replication_slots == 0)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 (FUNC2("replication slots can only be used if max_replication_slots > 0"))));

	if (wal_level < WAL_LEVEL_REPLICA)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC2("replication slots can only be used if wal_level >= replica")));
}