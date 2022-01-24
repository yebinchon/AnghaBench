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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ MyDatabaseId ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ WAL_LEVEL_LOGICAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ wal_level ; 

void
FUNC5(void)
{
	FUNC0();

	/*
	 * NB: Adding a new requirement likely means that RestoreSlotFromDisk()
	 * needs the same check.
	 */

	if (wal_level < WAL_LEVEL_LOGICAL)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC4("logical decoding requires wal_level >= logical")));

	if (MyDatabaseId == InvalidOid)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC4("logical decoding requires a database connection")));

	/* ----
	 * TODO: We got to change that someday soon...
	 *
	 * There's basically three things missing to allow this:
	 * 1) We need to be able to correctly and quickly identify the timeline a
	 *	  LSN belongs to
	 * 2) We need to force hot_standby_feedback to be enabled at all times so
	 *	  the primary cannot remove rows we need.
	 * 3) support dropping replication slots referring to a database, in
	 *	  dbase_redo. There can't be any active ones due to HS recovery
	 *	  conflicts, so that should be relatively easy.
	 * ----
	 */
	if (FUNC1())
		FUNC2(ERROR,
				(FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC4("logical decoding cannot be used while in recovery")));
}