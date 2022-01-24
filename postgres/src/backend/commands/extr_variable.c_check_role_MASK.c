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
struct TYPE_3__ {int is_superuser; int /*<<< orphan*/  roleid; } ;
typedef  TYPE_1__ role_auth_extra ;
struct TYPE_4__ {int rolsuper; int /*<<< orphan*/  oid; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  GucSource ;
typedef  TYPE_2__* Form_pg_authid ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHNAME ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InitializingParallelWorker ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (char*,char*) ; 

bool
FUNC12(char **newval, void **extra, GucSource source)
{
	HeapTuple	roleTup;
	Oid			roleid;
	bool		is_superuser;
	role_auth_extra *myextra;
	Form_pg_authid roleform;

	if (FUNC11(*newval, "none") == 0)
	{
		/* hardwired translation */
		roleid = InvalidOid;
		is_superuser = false;
	}
	else
	{
		if (!FUNC5())
		{
			/*
			 * Can't do catalog lookups, so fail.  The result of this is that
			 * role cannot be set in postgresql.conf, which seems like a good
			 * thing anyway, so we don't work hard to avoid it.
			 */
			return false;
		}

		/* Look up the username */
		roleTup = FUNC8(AUTHNAME, FUNC6(*newval));
		if (!FUNC4(roleTup))
		{
			FUNC2("role \"%s\" does not exist", *newval);
			return false;
		}

		roleform = (Form_pg_authid) FUNC0(roleTup);
		roleid = roleform->oid;
		is_superuser = roleform->rolsuper;

		FUNC7(roleTup);

		/*
		 * Verify that session user is allowed to become this role, but skip
		 * this in parallel mode, where we must blindly recreate the parallel
		 * leader's state.
		 */
		if (!InitializingParallelWorker &&
			!FUNC9(FUNC3(), roleid))
		{
			FUNC1(ERRCODE_INSUFFICIENT_PRIVILEGE);
			FUNC2("permission denied to set role \"%s\"",
							 *newval);
			return false;
		}
	}

	/* Set up "extra" struct for assign_role to use */
	myextra = (role_auth_extra *) FUNC10(sizeof(role_auth_extra));
	if (!myextra)
		return false;
	myextra->roleid = roleid;
	myextra->is_superuser = is_superuser;
	*extra = (void *) myextra;

	return true;
}