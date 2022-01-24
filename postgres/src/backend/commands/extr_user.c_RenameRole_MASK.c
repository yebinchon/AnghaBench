#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_12__ {scalar_t__ oid; scalar_t__ rolsuper; int /*<<< orphan*/  rolname; } ;
struct TYPE_11__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_authid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHNAME ; 
 int Anum_pg_authid_rolname ; 
 int Anum_pg_authid_rolpassword ; 
 int /*<<< orphan*/  AuthIdRelationId ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_RESERVED_NAME ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int /*<<< orphan*/  NOTICE ; 
 char const* FUNC9 (int /*<<< orphan*/ ) ; 
 int Natts_pg_authid ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ PASSWORD_TYPE_MD5 ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,int,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* FUNC24 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  namein ; 
 scalar_t__ FUNC25 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC29(const char *oldname, const char *newname)
{
	HeapTuple	oldtuple,
				newtuple;
	TupleDesc	dsc;
	Relation	rel;
	Datum		datum;
	bool		isnull;
	Datum		repl_val[Natts_pg_authid];
	bool		repl_null[Natts_pg_authid];
	bool		repl_repl[Natts_pg_authid];
	int			i;
	Oid			roleid;
	ObjectAddress address;
	Form_pg_authid authform;

	rel = FUNC28(AuthIdRelationId, RowExclusiveLock);
	dsc = FUNC11(rel);

	oldtuple = FUNC13(AUTHNAME, FUNC0(oldname));
	if (!FUNC6(oldtuple))
		FUNC17(ERROR,
				(FUNC18(ERRCODE_UNDEFINED_OBJECT),
				 FUNC20("role \"%s\" does not exist", oldname)));

	/*
	 * XXX Client applications probably store the session user somewhere, so
	 * renaming it could cause confusion.  On the other hand, there may not be
	 * an actual problem besides a little confusion, so think about this and
	 * decide.  Same for SET ROLE ... we don't restrict renaming the current
	 * effective userid, though.
	 */

	authform = (Form_pg_authid) FUNC3(oldtuple);
	roleid = authform->oid;

	if (roleid == FUNC5())
		FUNC17(ERROR,
				(FUNC18(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC20("session user cannot be renamed")));
	if (roleid == FUNC4())
		FUNC17(ERROR,
				(FUNC18(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC20("current user cannot be renamed")));

	/*
	 * Check that the user is not trying to rename a system role and not
	 * trying to rename a role into the reserved "pg_" namespace.
	 */
	if (FUNC8(FUNC9(authform->rolname)))
		FUNC17(ERROR,
				(FUNC18(ERRCODE_RESERVED_NAME),
				 FUNC20("role name \"%s\" is reserved",
						FUNC9(authform->rolname)),
				 FUNC19("Role names starting with \"pg_\" are reserved.")));

	if (FUNC8(newname))
		FUNC17(ERROR,
				(FUNC18(ERRCODE_RESERVED_NAME),
				 FUNC20("role name \"%s\" is reserved",
						newname),
				 FUNC19("Role names starting with \"pg_\" are reserved.")));

	/*
	 * If built with appropriate switch, whine when regression-testing
	 * conventions for role names are violated.
	 */
#ifdef ENFORCE_REGRESSION_TEST_NAME_RESTRICTIONS
	if (strncmp(newname, "regress_", 8) != 0)
		elog(WARNING, "roles created by regression test cases should have names starting with \"regress_\"");
#endif

	/* make sure the new name doesn't exist */
	if (FUNC14(AUTHNAME, FUNC0(newname)))
		FUNC17(ERROR,
				(FUNC18(ERRCODE_DUPLICATE_OBJECT),
				 FUNC20("role \"%s\" already exists", newname)));

	/*
	 * createrole is enough privilege unless you want to mess with a superuser
	 */
	if (((Form_pg_authid) FUNC3(oldtuple))->rolsuper)
	{
		if (!FUNC26())
			FUNC17(ERROR,
					(FUNC18(ERRCODE_INSUFFICIENT_PRIVILEGE),
					 FUNC20("must be superuser to rename superusers")));
	}
	else
	{
		if (!FUNC22())
			FUNC17(ERROR,
					(FUNC18(ERRCODE_INSUFFICIENT_PRIVILEGE),
					 FUNC20("permission denied to rename role")));
	}

	/* OK, construct the modified tuple */
	for (i = 0; i < Natts_pg_authid; i++)
		repl_repl[i] = false;

	repl_repl[Anum_pg_authid_rolname - 1] = true;
	repl_val[Anum_pg_authid_rolname - 1] = FUNC2(namein,
															   FUNC0(newname));
	repl_null[Anum_pg_authid_rolname - 1] = false;

	datum = FUNC23(oldtuple, Anum_pg_authid_rolpassword, dsc, &isnull);

	if (!isnull && FUNC21(FUNC15(datum)) == PASSWORD_TYPE_MD5)
	{
		/* MD5 uses the username as salt, so just clear it on a rename */
		repl_repl[Anum_pg_authid_rolpassword - 1] = true;
		repl_null[Anum_pg_authid_rolpassword - 1] = true;

		FUNC17(NOTICE,
				(FUNC20("MD5 password cleared because of role rename")));
	}

	newtuple = FUNC24(oldtuple, dsc, repl_val, repl_null, repl_repl);
	FUNC1(rel, &oldtuple->t_self, newtuple);

	FUNC7(AuthIdRelationId, roleid, 0);

	FUNC10(address, AuthIdRelationId, roleid);

	FUNC12(oldtuple);

	/*
	 * Close pg_authid, but keep lock till commit.
	 */
	FUNC27(rel, NoLock);

	return address;
}