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
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  INT4OID ; 
 int /*<<< orphan*/  INTERNALOID ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  OIDOID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Oid
FUNC6(List *procname, Oid typeOid)
{
	Oid			argList[3];
	Oid			procOid;

	/*
	 * Receive functions can take a single argument of type INTERNAL, or three
	 * arguments (internal, typioparam OID, typmod).
	 */
	argList[0] = INTERNALOID;

	procOid = FUNC0(procname, 1, argList, true);
	if (FUNC1(procOid))
		return procOid;

	argList[1] = OIDOID;
	argList[2] = INT4OID;

	procOid = FUNC0(procname, 3, argList, true);
	if (FUNC1(procOid))
		return procOid;

	FUNC2(ERROR,
			(FUNC3(ERRCODE_UNDEFINED_FUNCTION),
			 FUNC4("function %s does not exist",
					FUNC5(procname, 1, NIL, argList))));

	return InvalidOid;			/* keep compiler quiet */
}