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
typedef  scalar_t__ TimestampTz ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHNAME ; 
 int /*<<< orphan*/  Anum_pg_authid_rolpassword ; 
 int /*<<< orphan*/  Anum_pg_authid_rolvaliduntil ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,char const*) ; 

char *
FUNC10(const char *role, char **logdetail)
{
	TimestampTz vuntil = 0;
	HeapTuple	roleTup;
	Datum		datum;
	bool		isnull;
	char	   *shadow_pass;

	/* Get role info from pg_authid */
	roleTup = FUNC5(AUTHNAME, FUNC3(role));
	if (!FUNC2(roleTup))
	{
		*logdetail = FUNC9(FUNC8("Role \"%s\" does not exist."),
							  role);
		return NULL;			/* no such user */
	}

	datum = FUNC6(AUTHNAME, roleTup,
							Anum_pg_authid_rolpassword, &isnull);
	if (isnull)
	{
		FUNC4(roleTup);
		*logdetail = FUNC9(FUNC8("User \"%s\" has no password assigned."),
							  role);
		return NULL;			/* user has no password */
	}
	shadow_pass = FUNC7(datum);

	datum = FUNC6(AUTHNAME, roleTup,
							Anum_pg_authid_rolvaliduntil, &isnull);
	if (!isnull)
		vuntil = FUNC0(datum);

	FUNC4(roleTup);

	/*
	 * Password OK, but check to be sure we are not past rolvaliduntil
	 */
	if (!isnull && vuntil < FUNC1())
	{
		*logdetail = FUNC9(FUNC8("User \"%s\" has an expired password."),
							  role);
		return NULL;
	}

	return shadow_pass;
}