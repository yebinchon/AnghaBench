#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ major_version; scalar_t__ bin_version; } ;
struct TYPE_3__ {scalar_t__ major_version; scalar_t__ bin_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  PG_MAJORVERSION ; 
 scalar_t__ PG_VERSION_NUM ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__ new_cluster ; 
 TYPE_1__ old_cluster ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(void)
{
	FUNC4("Checking cluster versions");

	/* cluster versions should already have been obtained */
	FUNC0(old_cluster.major_version != 0);
	FUNC0(new_cluster.major_version != 0);

	/*
	 * We allow upgrades from/to the same major version for alpha/beta
	 * upgrades
	 */

	if (FUNC1(old_cluster.major_version) < 804)
		FUNC3("This utility can only upgrade from PostgreSQL version 8.4 and later.\n");

	/* Only current PG version is supported as a target */
	if (FUNC1(new_cluster.major_version) != FUNC1(PG_VERSION_NUM))
		FUNC3("This utility can only upgrade to PostgreSQL version %s.\n",
				 PG_MAJORVERSION);

	/*
	 * We can't allow downgrading because we use the target pg_dump, and
	 * pg_dump cannot operate on newer database versions, only current and
	 * older versions.
	 */
	if (old_cluster.major_version > new_cluster.major_version)
		FUNC3("This utility cannot be used to downgrade to older major PostgreSQL versions.\n");

	/* Ensure binaries match the designated data directories */
	if (FUNC1(old_cluster.major_version) !=
		FUNC1(old_cluster.bin_version))
		FUNC3("Old cluster data and binary directories are from different major versions.\n");
	if (FUNC1(new_cluster.major_version) !=
		FUNC1(new_cluster.bin_version))
		FUNC3("New cluster data and binary directories are from different major versions.\n");

	FUNC2();
}