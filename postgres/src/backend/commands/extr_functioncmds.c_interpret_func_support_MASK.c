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
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  DefElem ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_INVALID_OBJECT_DEFINITION ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ INTERNALOID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static Oid
FUNC10(DefElem *defel)
{
	List	   *procName = FUNC3(defel);
	Oid			procOid;
	Oid			argList[1];

	/*
	 * Support functions always take one INTERNAL argument and return
	 * INTERNAL.
	 */
	argList[0] = INTERNALOID;

	procOid = FUNC0(procName, 1, argList, true);
	if (!FUNC2(procOid))
		FUNC4(ERROR,
				(FUNC5(ERRCODE_UNDEFINED_FUNCTION),
				 FUNC6("function %s does not exist",
						FUNC7(procName, 1, NIL, argList))));

	if (FUNC8(procOid) != INTERNALOID)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_OBJECT_DEFINITION),
				 FUNC6("support function %s must return type %s",
						FUNC1(procName), "internal")));

	/*
	 * Someday we might want an ACL check here; but for now, we insist that
	 * you be superuser to specify a support function, so privilege on the
	 * support function is moot.
	 */
	if (!FUNC9())
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC6("must be superuser to specify a support function")));

	return procOid;
}