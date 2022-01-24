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
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_EXECUTE ; 
 int /*<<< orphan*/  ERRCODE_INVALID_OBJECT_DEFINITION ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  OBJECT_FUNCTION ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ PROVOLATILE_IMMUTABLE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Oid
FUNC12(List *procname, Oid typeOid)
{
	Oid			argList[1];
	Oid			procOid;
	AclResult	aclresult;

	/*
	 * Range canonical functions must take and return the range type, and must
	 * be immutable.
	 */
	argList[0] = typeOid;

	procOid = FUNC1(procname, 1, argList, true);

	if (!FUNC2(procOid))
		FUNC4(ERROR,
				(FUNC5(ERRCODE_UNDEFINED_FUNCTION),
				 FUNC6("function %s does not exist",
						FUNC7(procname, 1, NIL, argList))));

	if (FUNC10(procOid) != typeOid)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_OBJECT_DEFINITION),
				 FUNC6("range canonical function %s must return range type",
						FUNC7(procname, 1, NIL, argList))));

	if (FUNC8(procOid) != PROVOLATILE_IMMUTABLE)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_OBJECT_DEFINITION),
				 FUNC6("range canonical function %s must be immutable",
						FUNC7(procname, 1, NIL, argList))));

	/* Also, range type's creator must have permission to call function */
	aclresult = FUNC11(procOid, FUNC0(), ACL_EXECUTE);
	if (aclresult != ACLCHECK_OK)
		FUNC3(aclresult, OBJECT_FUNCTION, FUNC9(procOid));

	return procOid;
}