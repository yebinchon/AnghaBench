#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ len; char const* data; } ;
typedef  TYPE_1__* PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char**) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char const*,char const*,int,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char***,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,char const*) ; 
 scalar_t__ FUNC10 (char const*,char const*) ; 
 int FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (char const*,char*,int) ; 

bool
FUNC13(const char *name, const char *subname, const char *nspname,
				 const char *type, const char *acls, const char *racls,
				 const char *owner, const char *prefix, int remoteVersion,
				 PQExpBuffer sql)
{
	bool		ok = true;
	char	  **aclitems = NULL;
	char	  **raclitems = NULL;
	int			naclitems = 0;
	int			nraclitems = 0;
	int			i;
	PQExpBuffer grantee,
				grantor,
				privs,
				privswgo;
	PQExpBuffer firstsql,
				secondsql;
	bool		found_owner_privs = false;

	if (FUNC11(acls) == 0 && FUNC11(racls) == 0)
		return true;			/* object has default permissions */

	/* treat empty-string owner same as NULL */
	if (owner && *owner == '\0')
		owner = NULL;

	if (FUNC11(acls) != 0)
	{
		if (!FUNC8(acls, &aclitems, &naclitems))
		{
			if (aclitems)
				FUNC6(aclitems);
			return false;
		}
	}

	if (FUNC11(racls) != 0)
	{
		if (!FUNC8(racls, &raclitems, &nraclitems))
		{
			if (aclitems)
				FUNC6(aclitems);
			if (raclitems)
				FUNC6(raclitems);
			return false;
		}
	}

	grantee = FUNC3();
	grantor = FUNC3();
	privs = FUNC3();
	privswgo = FUNC3();

	/*
	 * At the end, these two will be pasted together to form the result.
	 *
	 * For older systems we use these to ensure that the owner privileges go
	 * before the other ones, as a GRANT could create the default entry for
	 * the object, which generally includes all rights for the owner. In more
	 * recent versions we normally handle this because the owner rights come
	 * first in the ACLs, but older versions might have them after the PUBLIC
	 * privileges.
	 *
	 * For 9.6 and later systems, much of this changes.  With 9.6, we check
	 * the default privileges for the objects at dump time and create two sets
	 * of ACLs- "racls" which are the ACLs to REVOKE from the object (as the
	 * object may have initial privileges on it, along with any default ACLs
	 * which are not part of the current set of privileges), and regular
	 * "acls", which are the ACLs to GRANT to the object.  We handle the
	 * REVOKEs first, followed by the GRANTs.
	 */
	firstsql = FUNC3();
	secondsql = FUNC3();

	/*
	 * For pre-9.6 systems, we always start with REVOKE ALL FROM PUBLIC, as we
	 * don't wish to make any assumptions about what the default ACLs are, and
	 * we do not collect them during the dump phase (and racls will always be
	 * the empty set, see above).
	 *
	 * For 9.6 and later, if any revoke ACLs have been provided, then include
	 * them in 'firstsql'.
	 *
	 * Revoke ACLs happen when an object starts out life with a set of
	 * privileges (eg: GRANT SELECT ON pg_class TO PUBLIC;) and the user has
	 * decided to revoke those rights.  Since those objects come into being
	 * with those default privileges, we have to revoke them to match what the
	 * current state of affairs is.  Note that we only started explicitly
	 * tracking such initial rights in 9.6, and prior to that all initial
	 * rights are actually handled by the simple 'REVOKE ALL .. FROM PUBLIC'
	 * case, for initdb-created objects.  Prior to 9.6, we didn't handle
	 * extensions correctly, but we do now by tracking their initial
	 * privileges, in the same way we track initdb initial privileges, see
	 * pg_init_privs.
	 */
	if (remoteVersion < 90600)
	{
		FUNC0(nraclitems == 0);

		FUNC1(firstsql, "%sREVOKE ALL", prefix);
		if (subname)
			FUNC1(firstsql, "(%s)", subname);
		FUNC1(firstsql, " ON %s ", type);
		if (nspname && *nspname)
			FUNC1(firstsql, "%s.", FUNC5(nspname));
		FUNC1(firstsql, "%s FROM PUBLIC;\n", name);
	}
	else
	{
		/* Scan individual REVOKE ACL items */
		for (i = 0; i < nraclitems; i++)
		{
			if (!FUNC7(raclitems[i], type, name, subname, remoteVersion,
							  grantee, grantor, privs, privswgo))
			{
				ok = false;
				break;
			}

			if (privs->len > 0 || privswgo->len > 0)
			{
				if (privs->len > 0)
				{
					FUNC1(firstsql, "%sREVOKE %s ON %s ",
									  prefix, privs->data, type);
					if (nspname && *nspname)
						FUNC1(firstsql, "%s.", FUNC5(nspname));
					FUNC1(firstsql, "%s FROM ", name);
					if (grantee->len == 0)
						FUNC2(firstsql, "PUBLIC;\n");
					else if (FUNC12(grantee->data, "group ",
									 FUNC11("group ")) == 0)
						FUNC1(firstsql, "GROUP %s;\n",
										  FUNC5(grantee->data + FUNC11("group ")));
					else
						FUNC1(firstsql, "%s;\n",
										  FUNC5(grantee->data));
				}
				if (privswgo->len > 0)
				{
					FUNC1(firstsql,
									  "%sREVOKE GRANT OPTION FOR %s ON %s ",
									  prefix, privswgo->data, type);
					if (nspname && *nspname)
						FUNC1(firstsql, "%s.", FUNC5(nspname));
					FUNC1(firstsql, "%s FROM ", name);
					if (grantee->len == 0)
						FUNC2(firstsql, "PUBLIC");
					else if (FUNC12(grantee->data, "group ",
									 FUNC11("group ")) == 0)
						FUNC1(firstsql, "GROUP %s",
										  FUNC5(grantee->data + FUNC11("group ")));
					else
						FUNC2(firstsql, FUNC5(grantee->data));
				}
			}
		}
	}

	/*
	 * We still need some hacking though to cover the case where new default
	 * public privileges are added in new versions: the REVOKE ALL will revoke
	 * them, leading to behavior different from what the old version had,
	 * which is generally not what's wanted.  So add back default privs if the
	 * source database is too old to have had that particular priv.
	 */
	if (remoteVersion < 80200 && FUNC10(type, "DATABASE") == 0)
	{
		/* database CONNECT priv didn't exist before 8.2 */
		FUNC1(firstsql, "%sGRANT CONNECT ON %s %s TO PUBLIC;\n",
						  prefix, type, name);
	}

	/* Scan individual ACL items */
	for (i = 0; i < naclitems; i++)
	{
		if (!FUNC7(aclitems[i], type, name, subname, remoteVersion,
						  grantee, grantor, privs, privswgo))
		{
			ok = false;
			break;
		}

		if (grantor->len == 0 && owner)
			FUNC9(grantor, "%s", owner);

		if (privs->len > 0 || privswgo->len > 0)
		{
			/*
			 * Prior to 9.6, we had to handle owner privileges in a special
			 * manner by first REVOKE'ing the rights and then GRANT'ing them
			 * after.  With 9.6 and above, what we need to REVOKE and what we
			 * need to GRANT is figured out when we dump and stashed into
			 * "racls" and "acls", respectively.  See above.
			 */
			if (remoteVersion < 90600 && owner
				&& FUNC10(grantee->data, owner) == 0
				&& FUNC10(grantor->data, owner) == 0)
			{
				found_owner_privs = true;

				/*
				 * For the owner, the default privilege level is ALL WITH
				 * GRANT OPTION.
				 */
				if (FUNC10(privswgo->data, "ALL") != 0)
				{
					FUNC1(firstsql, "%sREVOKE ALL", prefix);
					if (subname)
						FUNC1(firstsql, "(%s)", subname);
					FUNC1(firstsql, " ON %s ", type);
					if (nspname && *nspname)
						FUNC1(firstsql, "%s.", FUNC5(nspname));
					FUNC1(firstsql, "%s FROM %s;\n",
									  name, FUNC5(grantee->data));
					if (privs->len > 0)
					{
						FUNC1(firstsql,
										  "%sGRANT %s ON %s ",
										  prefix, privs->data, type);
						if (nspname && *nspname)
							FUNC1(firstsql, "%s.", FUNC5(nspname));
						FUNC1(firstsql,
										  "%s TO %s;\n",
										  name, FUNC5(grantee->data));
					}
					if (privswgo->len > 0)
					{
						FUNC1(firstsql,
										  "%sGRANT %s ON %s ",
										  prefix, privswgo->data, type);
						if (nspname && *nspname)
							FUNC1(firstsql, "%s.", FUNC5(nspname));
						FUNC1(firstsql,
										  "%s TO %s WITH GRANT OPTION;\n",
										  name, FUNC5(grantee->data));
					}
				}
			}
			else
			{
				/*
				 * For systems prior to 9.6, we can assume we are starting
				 * from no privs at this point.
				 *
				 * For 9.6 and above, at this point we have issued REVOKE
				 * statements for all initial and default privileges which are
				 * no longer present on the object (as they were passed in as
				 * 'racls') and we can simply GRANT the rights which are in
				 * 'acls'.
				 */
				if (grantor->len > 0
					&& (!owner || FUNC10(owner, grantor->data) != 0))
					FUNC1(secondsql, "SET SESSION AUTHORIZATION %s;\n",
									  FUNC5(grantor->data));

				if (privs->len > 0)
				{
					FUNC1(secondsql, "%sGRANT %s ON %s ",
									  prefix, privs->data, type);
					if (nspname && *nspname)
						FUNC1(secondsql, "%s.", FUNC5(nspname));
					FUNC1(secondsql, "%s TO ", name);
					if (grantee->len == 0)
						FUNC2(secondsql, "PUBLIC;\n");
					else if (FUNC12(grantee->data, "group ",
									 FUNC11("group ")) == 0)
						FUNC1(secondsql, "GROUP %s;\n",
										  FUNC5(grantee->data + FUNC11("group ")));
					else
						FUNC1(secondsql, "%s;\n", FUNC5(grantee->data));
				}
				if (privswgo->len > 0)
				{
					FUNC1(secondsql, "%sGRANT %s ON %s ",
									  prefix, privswgo->data, type);
					if (nspname && *nspname)
						FUNC1(secondsql, "%s.", FUNC5(nspname));
					FUNC1(secondsql, "%s TO ", name);
					if (grantee->len == 0)
						FUNC2(secondsql, "PUBLIC");
					else if (FUNC12(grantee->data, "group ",
									 FUNC11("group ")) == 0)
						FUNC1(secondsql, "GROUP %s",
										  FUNC5(grantee->data + FUNC11("group ")));
					else
						FUNC2(secondsql, FUNC5(grantee->data));
					FUNC2(secondsql, " WITH GRANT OPTION;\n");
				}

				if (grantor->len > 0
					&& (!owner || FUNC10(owner, grantor->data) != 0))
					FUNC2(secondsql, "RESET SESSION AUTHORIZATION;\n");
			}
		}
	}

	/*
	 * For systems prior to 9.6, if we didn't find any owner privs, the owner
	 * must have revoked 'em all.
	 *
	 * For 9.6 and above, we handle this through the 'racls'.  See above.
	 */
	if (remoteVersion < 90600 && !found_owner_privs && owner)
	{
		FUNC1(firstsql, "%sREVOKE ALL", prefix);
		if (subname)
			FUNC1(firstsql, "(%s)", subname);
		FUNC1(firstsql, " ON %s ", type);
		if (nspname && *nspname)
			FUNC1(firstsql, "%s.", FUNC5(nspname));
		FUNC1(firstsql, "%s FROM %s;\n",
						  name, FUNC5(owner));
	}

	FUNC4(grantee);
	FUNC4(grantor);
	FUNC4(privs);
	FUNC4(privswgo);

	FUNC1(sql, "%s%s", firstsql->data, secondsql->data);
	FUNC4(firstsql);
	FUNC4(secondsql);

	if (aclitems)
		FUNC6(aclitems);

	if (raclitems)
		FUNC6(raclitems);

	return ok;
}