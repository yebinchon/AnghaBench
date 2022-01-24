#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  location; } ;
struct TYPE_8__ {int /*<<< orphan*/  location; int /*<<< orphan*/  fields; } ;
struct TYPE_7__ {int /*<<< orphan*/  p_ref_hook_state; } ;
typedef  TYPE_1__ ParseState ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_2__ ColumnRef ;
typedef  TYPE_3__ CoerceToDomainValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  String ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static Node *
FUNC7(ParseState *pstate, ColumnRef *cref)
{
	/*
	 * Check for a reference to "value", and if that's what it is, replace
	 * with a CoerceToDomainValue as prepared for us by domainAddConstraint.
	 * (We handle VALUE as a name, not a keyword, to avoid breaking a lot of
	 * applications that have used VALUE as a column name in the past.)
	 */
	if (FUNC4(cref->fields) == 1)
	{
		Node	   *field1 = (Node *) FUNC3(cref->fields);
		char	   *colname;

		FUNC0(FUNC1(field1, String));
		colname = FUNC5(field1);
		if (FUNC6(colname, "value") == 0)
		{
			CoerceToDomainValue *domVal = FUNC2(pstate->p_ref_hook_state);

			/* Propagate location knowledge, if any */
			domVal->location = cref->location;
			return (Node *) domVal;
		}
	}
	return NULL;
}