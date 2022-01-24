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
struct TYPE_2__ {scalar_t__ wal_level; int /*<<< orphan*/  max_locks_per_xact; int /*<<< orphan*/  max_prepared_xacts; int /*<<< orphan*/  max_wal_senders; int /*<<< orphan*/  max_worker_processes; int /*<<< orphan*/  MaxConnections; } ;

/* Variables and functions */
 scalar_t__ ArchiveRecoveryRequested ; 
 TYPE_1__* ControlFile ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ EnableHotStandby ; 
 int /*<<< orphan*/  MaxConnections ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ WAL_LEVEL_MINIMAL ; 
 scalar_t__ WAL_LEVEL_REPLICA ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  max_locks_per_xact ; 
 int /*<<< orphan*/  max_prepared_xacts ; 
 int /*<<< orphan*/  max_wal_senders ; 
 int /*<<< orphan*/  max_worker_processes ; 

__attribute__((used)) static void
FUNC4(void)
{
	/*
	 * For archive recovery, the WAL must be generated with at least 'replica'
	 * wal_level.
	 */
	if (ArchiveRecoveryRequested && ControlFile->wal_level == WAL_LEVEL_MINIMAL)
	{
		FUNC1(WARNING,
				(FUNC3("WAL was generated with wal_level=minimal, data may be missing"),
				 FUNC2("This happens if you temporarily set wal_level=minimal without taking a new base backup.")));
	}

	/*
	 * For Hot Standby, the WAL must be generated with 'replica' mode, and we
	 * must have at least as many backend slots as the primary.
	 */
	if (ArchiveRecoveryRequested && EnableHotStandby)
	{
		if (ControlFile->wal_level < WAL_LEVEL_REPLICA)
			FUNC1(ERROR,
					(FUNC3("hot standby is not possible because wal_level was not set to \"replica\" or higher on the master server"),
					 FUNC2("Either set wal_level to \"replica\" on the master, or turn off hot_standby here.")));

		/* We ignore autovacuum_max_workers when we make this test. */
		FUNC0("max_connections",
									 MaxConnections,
									 ControlFile->MaxConnections);
		FUNC0("max_worker_processes",
									 max_worker_processes,
									 ControlFile->max_worker_processes);
		FUNC0("max_wal_senders",
									 max_wal_senders,
									 ControlFile->max_wal_senders);
		FUNC0("max_prepared_transactions",
									 max_prepared_xacts,
									 ControlFile->max_prepared_xacts);
		FUNC0("max_locks_per_transaction",
									 max_locks_per_xact,
									 ControlFile->max_locks_per_xact);
	}
}