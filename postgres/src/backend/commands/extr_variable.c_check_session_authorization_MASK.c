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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

bool
FUNC8(char **newval, void **extra, GucSource source)
{
	HeapTuple	roleTup;
	Form_pg_authid roleform;
	Oid			roleid;
	bool		is_superuser;
	role_auth_extra *myextra;

	/* Do nothing for the boot_val default of NULL */
	if (*newval == NULL)
		return true;

	if (!FUNC3())
	{
		/*
		 * Can't do catalog lookups, so fail.  The result of this is that
		 * session_authorization cannot be set in postgresql.conf, which seems
		 * like a good thing anyway, so we don't work hard to avoid it.
		 */
		return false;
	}

	/* Look up the username */
	roleTup = FUNC6(AUTHNAME, FUNC4(*newval));
	if (!FUNC2(roleTup))
	{
		FUNC1("role \"%s\" does not exist", *newval);
		return false;
	}

	roleform = (Form_pg_authid) FUNC0(roleTup);
	roleid = roleform->oid;
	is_superuser = roleform->rolsuper;

	FUNC5(roleTup);

	/* Set up "extra" struct for assign_session_authorization to use */
	myextra = (role_auth_extra *) FUNC7(sizeof(role_auth_extra));
	if (!myextra)
		return false;
	myextra->roleid = roleid;
	myextra->is_superuser = is_superuser;
	*extra = (void *) myextra;

	return true;
}