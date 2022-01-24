#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  relname; scalar_t__ schemaname; int /*<<< orphan*/  location; } ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  TYPE_1__ RangeVar ;
typedef  int /*<<< orphan*/  ParseState ;
typedef  int /*<<< orphan*/  ParseCallbackState ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_TABLE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__ const*,int,int) ; 

Relation
FUNC9(ParseState *pstate, const RangeVar *relation, int lockmode)
{
	Relation	rel;
	ParseCallbackState pcbstate;

	FUNC7(&pcbstate, pstate, relation->location);
	rel = FUNC8(relation, lockmode, true);
	if (rel == NULL)
	{
		if (relation->schemaname)
			FUNC1(ERROR,
					(FUNC2(ERRCODE_UNDEFINED_TABLE),
					 FUNC5("relation \"%s.%s\" does not exist",
							relation->schemaname, relation->relname)));
		else
		{
			/*
			 * An unqualified name might have been meant as a reference to
			 * some not-yet-in-scope CTE.  The bare "does not exist" message
			 * has proven remarkably unhelpful for figuring out such problems,
			 * so we take pains to offer a specific hint.
			 */
			if (FUNC6(pstate, relation->relname))
				FUNC1(ERROR,
						(FUNC2(ERRCODE_UNDEFINED_TABLE),
						 FUNC5("relation \"%s\" does not exist",
								relation->relname),
						 FUNC3("There is a WITH item named \"%s\", but it cannot be referenced from this part of the query.",
								   relation->relname),
						 FUNC4("Use WITH RECURSIVE, or re-order the WITH items to remove forward references.")));
			else
				FUNC1(ERROR,
						(FUNC2(ERRCODE_UNDEFINED_TABLE),
						 FUNC5("relation \"%s\" does not exist",
								relation->relname)));
		}
	}
	FUNC0(&pcbstate);
	return rel;
}