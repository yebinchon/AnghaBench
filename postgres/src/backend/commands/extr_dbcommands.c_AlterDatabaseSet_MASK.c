#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  setstmt; int /*<<< orphan*/  dbname; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ AlterDatabaseSetStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DatabaseRelationId ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  OBJECT_DATABASE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC7(AlterDatabaseSetStmt *stmt)
{
	Oid			datid = FUNC4(stmt->dbname, false);

	/*
	 * Obtain a lock on the database and make sure it didn't go away in the
	 * meantime.
	 */
	FUNC6(DatabaseRelationId, datid);

	if (!FUNC5(datid, FUNC1()))
		FUNC3(ACLCHECK_NOT_OWNER, OBJECT_DATABASE,
					   stmt->dbname);

	FUNC0(datid, InvalidOid, stmt->setstmt);

	FUNC2(DatabaseRelationId, datid, 0, AccessShareLock);

	return datid;
}