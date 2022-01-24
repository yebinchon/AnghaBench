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
typedef  int /*<<< orphan*/  ParseState ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  scalar_t__ FuncDetailCode ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_AMBIGUOUS_FUNCTION ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNCDETAIL_MULTIPLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC6(ParseState *pstate, List *op, char oprkind,
		 Oid arg1, Oid arg2,
		 FuncDetailCode fdresult, int location)
{
	if (fdresult == FUNCDETAIL_MULTIPLE)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_AMBIGUOUS_FUNCTION),
				 FUNC3("operator is not unique: %s",
						FUNC4(op, oprkind, arg1, arg2)),
				 FUNC2("Could not choose a best candidate operator. "
						 "You might need to add explicit type casts."),
				 FUNC5(pstate, location)));
	else
		FUNC0(ERROR,
				(FUNC1(ERRCODE_UNDEFINED_FUNCTION),
				 FUNC3("operator does not exist: %s",
						FUNC4(op, oprkind, arg1, arg2)),
				 (!arg1 || !arg2) ?
				 FUNC2("No operator matches the given name and argument type. "
						 "You might need to add an explicit type cast.") :
				 FUNC2("No operator matches the given name and argument types. "
						 "You might need to add explicit type casts."),
				 FUNC5(pstate, location)));
}