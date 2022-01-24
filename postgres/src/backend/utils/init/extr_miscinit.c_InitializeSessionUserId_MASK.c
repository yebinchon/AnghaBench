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
struct TYPE_4__ {char* roleId; } ;
struct TYPE_3__ {char* oid; scalar_t__ rolconnlimit; int /*<<< orphan*/  rolcanlogin; scalar_t__ rolsuper; int /*<<< orphan*/  rolname; } ;
typedef  char* Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_authid ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHNAME ; 
 int /*<<< orphan*/  AUTHOID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* AuthenticatedUserId ; 
 scalar_t__ AuthenticatedUserIsSuperuser ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION ; 
 int /*<<< orphan*/  ERRCODE_TOO_MANY_CONNECTIONS ; 
 int /*<<< orphan*/  FATAL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ IsUnderPostmaster ; 
 TYPE_2__* MyProc ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  PGC_BACKEND ; 
 int /*<<< orphan*/  PGC_INTERNAL ; 
 int /*<<< orphan*/  PGC_S_OVERRIDE ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*) ; 

void
FUNC17(const char *rolename, Oid roleid)
{
	HeapTuple	roleTup;
	Form_pg_authid rform;
	char	   *rname;

	/*
	 * Don't do scans if we're bootstrapping, none of the system catalogs
	 * exist yet, and they should be owned by postgres anyway.
	 */
	FUNC1(!FUNC5());

	/* call only once */
	FUNC1(!FUNC8(AuthenticatedUserId));

	/*
	 * Make sure syscache entries are flushed for recent catalog changes. This
	 * allows us to find roles that were created on-the-fly during
	 * authentication.
	 */
	FUNC0();

	if (rolename != NULL)
	{
		roleTup = FUNC11(AUTHNAME, FUNC9(rolename));
		if (!FUNC4(roleTup))
			FUNC14(FATAL,
					(FUNC15(ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION),
					 FUNC16("role \"%s\" does not exist", rolename)));
	}
	else
	{
		roleTup = FUNC11(AUTHOID, FUNC7(roleid));
		if (!FUNC4(roleTup))
			FUNC14(FATAL,
					(FUNC15(ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION),
					 FUNC16("role with OID %u does not exist", roleid)));
	}

	rform = (Form_pg_authid) FUNC3(roleTup);
	roleid = rform->oid;
	rname = FUNC6(rform->rolname);

	AuthenticatedUserId = roleid;
	AuthenticatedUserIsSuperuser = rform->rolsuper;

	/* This sets OuterUserId/CurrentUserId too */
	FUNC13(roleid, AuthenticatedUserIsSuperuser);

	/* Also mark our PGPROC entry with the authenticated user id */
	/* (We assume this is an atomic store so no lock is needed) */
	MyProc->roleId = roleid;

	/*
	 * These next checks are not enforced when in standalone mode, so that
	 * there is a way to recover from sillinesses like "UPDATE pg_authid SET
	 * rolcanlogin = false;".
	 */
	if (IsUnderPostmaster)
	{
		/*
		 * Is role allowed to login at all?
		 */
		if (!rform->rolcanlogin)
			FUNC14(FATAL,
					(FUNC15(ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION),
					 FUNC16("role \"%s\" is not permitted to log in",
							rname)));

		/*
		 * Check connection limit for this role.
		 *
		 * There is a race condition here --- we create our PGPROC before
		 * checking for other PGPROCs.  If two backends did this at about the
		 * same time, they might both think they were over the limit, while
		 * ideally one should succeed and one fail.  Getting that to work
		 * exactly seems more trouble than it is worth, however; instead we
		 * just document that the connection limit is approximate.
		 */
		if (rform->rolconnlimit >= 0 &&
			!AuthenticatedUserIsSuperuser &&
			FUNC2(roleid) > rform->rolconnlimit)
			FUNC14(FATAL,
					(FUNC15(ERRCODE_TOO_MANY_CONNECTIONS),
					 FUNC16("too many connections for role \"%s\"",
							rname)));
	}

	/* Record username and superuser status as GUC settings too */
	FUNC12("session_authorization", rname,
					PGC_BACKEND, PGC_S_OVERRIDE);
	FUNC12("is_superuser",
					AuthenticatedUserIsSuperuser ? "on" : "off",
					PGC_INTERNAL, PGC_S_OVERRIDE);

	FUNC10(roleTup);
}