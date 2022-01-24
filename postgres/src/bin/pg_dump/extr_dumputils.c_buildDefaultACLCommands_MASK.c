#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,char const*,char const*,int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 

bool
FUNC7(const char *type, const char *nspname,
						const char *acls, const char *racls,
						const char *initacls, const char *initracls,
						const char *owner,
						int remoteVersion,
						PQExpBuffer sql)
{
	PQExpBuffer prefix;

	prefix = FUNC3();

	/*
	 * We incorporate the target role directly into the command, rather than
	 * playing around with SET ROLE or anything like that.  This is so that a
	 * permissions error leads to nothing happening, rather than changing
	 * default privileges for the wrong user.
	 */
	FUNC0(prefix, "ALTER DEFAULT PRIVILEGES FOR ROLE %s ",
					  FUNC5(owner));
	if (nspname)
		FUNC0(prefix, "IN SCHEMA %s ", FUNC5(nspname));

	if (FUNC6(initacls) != 0 || FUNC6(initracls) != 0)
	{
		FUNC1(sql, "SELECT pg_catalog.binary_upgrade_set_record_init_privs(true);\n");
		if (!FUNC2("", NULL, NULL, type,
							  initacls, initracls, owner,
							  prefix->data, remoteVersion, sql))
		{
			FUNC4(prefix);
			return false;
		}
		FUNC1(sql, "SELECT pg_catalog.binary_upgrade_set_record_init_privs(false);\n");
	}

	if (!FUNC2("", NULL, NULL, type,
						  acls, racls, owner,
						  prefix->data, remoteVersion, sql))
	{
		FUNC4(prefix);
		return false;
	}

	FUNC4(prefix);

	return true;
}