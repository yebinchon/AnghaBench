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
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DbRoleSettingRelationId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  IsUnderPostmaster ; 
 int /*<<< orphan*/  PGC_S_DATABASE ; 
 int /*<<< orphan*/  PGC_S_DATABASE_USER ; 
 int /*<<< orphan*/  PGC_S_GLOBAL ; 
 int /*<<< orphan*/  PGC_S_USER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(Oid databaseid, Oid roleid)
{
	Relation	relsetting;
	Snapshot	snapshot;

	if (!IsUnderPostmaster)
		return;

	relsetting = FUNC5(DbRoleSettingRelationId, AccessShareLock);

	/* read all the settings under the same snapshot for efficiency */
	snapshot = FUNC2(FUNC1(DbRoleSettingRelationId));

	/* Later settings are ignored if set earlier. */
	FUNC0(snapshot, databaseid, roleid, relsetting, PGC_S_DATABASE_USER);
	FUNC0(snapshot, InvalidOid, roleid, relsetting, PGC_S_USER);
	FUNC0(snapshot, databaseid, InvalidOid, relsetting, PGC_S_DATABASE);
	FUNC0(snapshot, InvalidOid, InvalidOid, relsetting, PGC_S_GLOBAL);

	FUNC3(snapshot);
	FUNC4(relsetting, AccessShareLock);
}