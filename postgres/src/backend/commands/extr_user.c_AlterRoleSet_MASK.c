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
struct TYPE_5__ {int /*<<< orphan*/  setstmt; int /*<<< orphan*/ * database; scalar_t__ role; } ;
struct TYPE_4__ {scalar_t__ oid; scalar_t__ rolsuper; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_authid ;
typedef  TYPE_2__ AlterRoleSetStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AuthIdRelationId ; 
 int /*<<< orphan*/  DatabaseRelationId ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  OBJECT_DATABASE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 () ; 

Oid
FUNC15(AlterRoleSetStmt *stmt)
{
	HeapTuple	roletuple;
	Form_pg_authid roleform;
	Oid			databaseid = InvalidOid;
	Oid			roleid = InvalidOid;

	if (stmt->role)
	{
		FUNC5(stmt->role,
							"Cannot alter reserved roles.");

		roletuple = FUNC10(stmt->role);
		roleform = (Form_pg_authid) FUNC1(roletuple);
		roleid = roleform->oid;

		/*
		 * Obtain a lock on the role and make sure it didn't go away in the
		 * meantime.
		 */
		FUNC13(AuthIdRelationId, roleid);

		/*
		 * To mess with a superuser you gotta be superuser; else you need
		 * createrole, or just want to change your own settings
		 */
		if (roleform->rolsuper)
		{
			if (!FUNC14())
				FUNC6(ERROR,
						(FUNC7(ERRCODE_INSUFFICIENT_PRIVILEGE),
						 FUNC8("must be superuser to alter superusers")));
		}
		else
		{
			if (!FUNC11() && roleid != FUNC2())
				FUNC6(ERROR,
						(FUNC7(ERRCODE_INSUFFICIENT_PRIVILEGE),
						 FUNC8("permission denied")));
		}

		FUNC3(roletuple);
	}

	/* look up and lock the database, if specified */
	if (stmt->database != NULL)
	{
		databaseid = FUNC9(stmt->database, false);
		FUNC13(DatabaseRelationId, databaseid);

		if (!stmt->role)
		{
			/*
			 * If no role is specified, then this is effectively the same as
			 * ALTER DATABASE ... SET, so use the same permission check.
			 */
			if (!FUNC12(databaseid, FUNC2()))
				FUNC4(ACLCHECK_NOT_OWNER, OBJECT_DATABASE,
							   stmt->database);
		}
	}

	if (!stmt->role && !stmt->database)
	{
		/* Must be superuser to alter settings globally. */
		if (!FUNC14())
			FUNC6(ERROR,
					(FUNC7(ERRCODE_INSUFFICIENT_PRIVILEGE),
					 FUNC8("must be superuser to alter settings globally")));
	}

	FUNC0(databaseid, roleid, stmt->setstmt);

	return roleid;
}