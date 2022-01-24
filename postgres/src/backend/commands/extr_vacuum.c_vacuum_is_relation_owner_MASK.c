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
struct TYPE_3__ {scalar_t__ relnamespace; scalar_t__ relisshared; int /*<<< orphan*/  relname; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ PG_CATALOG_NAMESPACE ; 
 int VACOPT_ANALYZE ; 
 int VACOPT_VACUUM ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC7(Oid relid, Form_pg_class reltuple, int options)
{
	char	   *relname;

	FUNC0((options & (VACOPT_VACUUM | VACOPT_ANALYZE)) != 0);

	/*
	 * Check permissions.
	 *
	 * We allow the user to vacuum or analyze a table if he is superuser, the
	 * table owner, or the database owner (but in the latter case, only if
	 * it's not a shared relation).  pg_class_ownercheck includes the
	 * superuser case.
	 *
	 * Note we choose to treat permissions failure as a WARNING and keep
	 * trying to vacuum or analyze the rest of the DB --- is this appropriate?
	 */
	if (FUNC5(relid, FUNC1()) ||
		(FUNC6(MyDatabaseId, FUNC1()) && !reltuple->relisshared))
		return true;

	relname = FUNC2(reltuple->relname);

	if ((options & VACOPT_VACUUM) != 0)
	{
		if (reltuple->relisshared)
			FUNC3(WARNING,
					(FUNC4("skipping \"%s\" --- only superuser can vacuum it",
							relname)));
		else if (reltuple->relnamespace == PG_CATALOG_NAMESPACE)
			FUNC3(WARNING,
					(FUNC4("skipping \"%s\" --- only superuser or database owner can vacuum it",
							relname)));
		else
			FUNC3(WARNING,
					(FUNC4("skipping \"%s\" --- only table or database owner can vacuum it",
							relname)));

		/*
		 * For VACUUM ANALYZE, both logs could show up, but just generate
		 * information for VACUUM as that would be the first one to be
		 * processed.
		 */
		return false;
	}

	if ((options & VACOPT_ANALYZE) != 0)
	{
		if (reltuple->relisshared)
			FUNC3(WARNING,
					(FUNC4("skipping \"%s\" --- only superuser can analyze it",
							relname)));
		else if (reltuple->relnamespace == PG_CATALOG_NAMESPACE)
			FUNC3(WARNING,
					(FUNC4("skipping \"%s\" --- only superuser or database owner can analyze it",
							relname)));
		else
			FUNC3(WARNING,
					(FUNC4("skipping \"%s\" --- only table or database owner can analyze it",
							relname)));
	}

	return false;
}