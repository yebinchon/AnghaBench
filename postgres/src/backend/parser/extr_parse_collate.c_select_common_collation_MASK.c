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
struct TYPE_3__ {scalar_t__ strength; int location; int /*<<< orphan*/  collation; int /*<<< orphan*/  location2; int /*<<< orphan*/ * pstate; int /*<<< orphan*/  collation2; } ;
typedef  TYPE_1__ assign_collations_context ;
typedef  int /*<<< orphan*/  ParseState ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 scalar_t__ COLLATE_CONFLICT ; 
 scalar_t__ COLLATE_NONE ; 
 int /*<<< orphan*/  ERRCODE_COLLATION_MISMATCH ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

Oid
FUNC7(ParseState *pstate, List *exprs, bool none_ok)
{
	assign_collations_context context;

	/* initialize context for tree walk */
	context.pstate = pstate;
	context.collation = InvalidOid;
	context.strength = COLLATE_NONE;
	context.location = -1;

	/* and away we go */
	(void) FUNC0((Node *) exprs, &context);

	/* deal with collation conflict */
	if (context.strength == COLLATE_CONFLICT)
	{
		if (none_ok)
			return InvalidOid;
		FUNC1(ERROR,
				(FUNC2(ERRCODE_COLLATION_MISMATCH),
				 FUNC4("collation mismatch between implicit collations \"%s\" and \"%s\"",
						FUNC5(context.collation),
						FUNC5(context.collation2)),
				 FUNC3("You can choose the collation by applying the COLLATE clause to one or both expressions."),
				 FUNC6(context.pstate, context.location2)));
	}

	/*
	 * Note: if strength is still COLLATE_NONE, we'll return InvalidOid, but
	 * that's okay because it must mean none of the expressions returned
	 * collatable datatypes.
	 */
	return context.collation;
}