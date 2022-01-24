#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int relrowsecurity; int relforcerowsecurity; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FirstNormalObjectId ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  RELOID ; 
 int RLS_ENABLED ; 
 int RLS_NONE ; 
 int RLS_NONE_ENV ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int FUNC13 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  row_security ; 

int
FUNC14(Oid relid, Oid checkAsUser, bool noError)
{
	Oid			user_id = checkAsUser ? checkAsUser : FUNC1();
	HeapTuple	tuple;
	Form_pg_class classform;
	bool		relrowsecurity;
	bool		relforcerowsecurity;
	bool		amowner;

	/* Nothing to do for built-in relations */
	if (relid < (Oid) FirstNormalObjectId)
		return RLS_NONE;

	/* Fetch relation's relrowsecurity and relforcerowsecurity flags */
	tuple = FUNC6(RELOID, FUNC4(relid));
	if (!FUNC2(tuple))
		return RLS_NONE;
	classform = (Form_pg_class) FUNC0(tuple);

	relrowsecurity = classform->relrowsecurity;
	relforcerowsecurity = classform->relforcerowsecurity;

	FUNC5(tuple);

	/* Nothing to do if the relation does not have RLS */
	if (!relrowsecurity)
		return RLS_NONE;

	/*
	 * BYPASSRLS users always bypass RLS.  Note that superusers are always
	 * considered to have BYPASSRLS.
	 *
	 * Return RLS_NONE_ENV to indicate that this decision depends on the
	 * environment (in this case, the user_id).
	 */
	if (FUNC12(user_id))
		return RLS_NONE_ENV;

	/*
	 * Table owners generally bypass RLS, except if the table has been set (by
	 * an owner) to FORCE ROW SECURITY, and this is not a referential
	 * integrity check.
	 *
	 * Return RLS_NONE_ENV to indicate that this decision depends on the
	 * environment (in this case, the user_id).
	 */
	amowner = FUNC13(relid, user_id);
	if (amowner)
	{
		/*
		 * If FORCE ROW LEVEL SECURITY has been set on the relation then we
		 * should return RLS_ENABLED to indicate that RLS should be applied.
		 * If not, or if we are in an InNoForceRLSOperation context, we return
		 * RLS_NONE_ENV.
		 *
		 * InNoForceRLSOperation indicates that we should not apply RLS even
		 * if the table has FORCE RLS set - IF the current user is the owner.
		 * This is specifically to ensure that referential integrity checks
		 * are able to still run correctly.
		 *
		 * This is intentionally only done after we have checked that the user
		 * is the table owner, which should always be the case for referential
		 * integrity checks.
		 */
		if (!relforcerowsecurity || FUNC3())
			return RLS_NONE_ENV;
	}

	/*
	 * We should apply RLS.  However, the user may turn off the row_security
	 * GUC to get a forced error instead.
	 */
	if (!row_security && !noError)
		FUNC7(ERROR,
				(FUNC8(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC10("query would be affected by row-level security policy for table \"%s\"",
						FUNC11(relid)),
				 amowner ? FUNC9("To disable the policy for the table's owner, use ALTER TABLE NO FORCE ROW LEVEL SECURITY.") : 0));

	/* RLS should be fully enabled for this relation. */
	return RLS_ENABLED;
}