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
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_EXECUTE ; 
 int /*<<< orphan*/  ERRCODE_INVALID_OBJECT_DEFINITION ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FLOAT8OID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  OBJECT_FUNCTION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ PROVOLATILE_IMMUTABLE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Oid
FUNC12(List *procname, Oid subtype)
{
	Oid			argList[2];
	Oid			procOid;
	AclResult	aclresult;

	/*
	 * Range subtype diff functions must take two arguments of the subtype,
	 * must return float8, and must be immutable.
	 */
	argList[0] = subtype;
	argList[1] = subtype;

	procOid = FUNC1(procname, 2, argList, true);

	if (!FUNC2(procOid))
		FUNC4(ERROR,
				(FUNC5(ERRCODE_UNDEFINED_FUNCTION),
				 FUNC6("function %s does not exist",
						FUNC7(procname, 2, NIL, argList))));

	if (FUNC10(procOid) != FLOAT8OID)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_OBJECT_DEFINITION),
				 FUNC6("range subtype diff function %s must return type %s",
						FUNC7(procname, 2, NIL, argList),
						"double precision")));

	if (FUNC8(procOid) != PROVOLATILE_IMMUTABLE)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_OBJECT_DEFINITION),
				 FUNC6("range subtype diff function %s must be immutable",
						FUNC7(procname, 2, NIL, argList))));

	/* Also, range type's creator must have permission to call function */
	aclresult = FUNC11(procOid, FUNC0(), ACL_EXECUTE);
	if (aclresult != ACLCHECK_OK)
		FUNC3(aclresult, OBJECT_FUNCTION, FUNC9(procOid));

	return procOid;
}