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
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 scalar_t__ BOOLOID ; 
 int /*<<< orphan*/  ERRCODE_INVALID_OBJECT_DEFINITION ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  INTERNALOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Oid
FUNC8(List *procname, Oid typeOid)
{
	Oid			argList[1];
	Oid			procOid;

	/*
	 * Analyze functions always take one INTERNAL argument and return bool.
	 */
	argList[0] = INTERNALOID;

	procOid = FUNC0(procname, 1, argList, true);
	if (!FUNC2(procOid))
		FUNC3(ERROR,
				(FUNC4(ERRCODE_UNDEFINED_FUNCTION),
				 FUNC5("function %s does not exist",
						FUNC6(procname, 1, NIL, argList))));

	if (FUNC7(procOid) != BOOLOID)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_INVALID_OBJECT_DEFINITION),
				 FUNC5("type analyze function %s must return type %s",
						FUNC1(procname), "boolean")));

	return procOid;
}