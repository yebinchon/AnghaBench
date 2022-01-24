#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* parentParseState; } ;
typedef  int /*<<< orphan*/  RangeTblEntry ;
typedef  TYPE_1__ ParseState ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

RangeTblEntry *
FUNC5(ParseState *pstate,
					 const char *schemaname,
					 const char *refname,
					 int location,
					 int *sublevels_up)
{
	Oid			relId = InvalidOid;

	if (sublevels_up)
		*sublevels_up = 0;

	if (schemaname != NULL)
	{
		Oid			namespaceId;

		/*
		 * We can use LookupNamespaceNoError() here because we are only
		 * interested in finding existing RTEs.  Checking USAGE permission on
		 * the schema is unnecessary since it would have already been checked
		 * when the RTE was made.  Furthermore, we want to report "RTE not
		 * found", not "no permissions for schema", if the name happens to
		 * match a schema name the user hasn't got access to.
		 */
		namespaceId = FUNC0(schemaname);
		if (!FUNC1(namespaceId))
			return NULL;
		relId = FUNC2(refname, namespaceId);
		if (!FUNC1(relId))
			return NULL;
	}

	while (pstate != NULL)
	{
		RangeTblEntry *result;

		if (FUNC1(relId))
			result = FUNC4(pstate, relId, location);
		else
			result = FUNC3(pstate, refname, location);

		if (result)
			return result;

		if (sublevels_up)
			(*sublevels_up)++;
		else
			break;

		pstate = pstate->parentParseState;
	}
	return NULL;
}