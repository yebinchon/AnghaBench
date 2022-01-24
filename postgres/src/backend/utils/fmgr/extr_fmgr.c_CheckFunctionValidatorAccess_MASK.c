#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ lanvalidator; int /*<<< orphan*/  lanname; } ;
struct TYPE_3__ {scalar_t__ prolang; int /*<<< orphan*/  proname; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_proc ;
typedef  TYPE_2__* Form_pg_language ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_EXECUTE ; 
 int /*<<< orphan*/  ACL_USAGE ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LANGOID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBJECT_FUNCTION ; 
 int /*<<< orphan*/  OBJECT_LANGUAGE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__,...) ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC14(Oid validatorOid, Oid functionOid)
{
	HeapTuple	procTup;
	HeapTuple	langTup;
	Form_pg_proc procStruct;
	Form_pg_language langStruct;
	AclResult	aclresult;

	/*
	 * Get the function's pg_proc entry.  Throw a user-facing error for bad
	 * OID, because validators can be called with user-specified OIDs.
	 */
	procTup = FUNC6(PROCOID, FUNC4(functionOid));
	if (!FUNC2(procTup))
		FUNC9(ERROR,
				(FUNC10(ERRCODE_UNDEFINED_FUNCTION),
				 FUNC11("function with OID %u does not exist", functionOid)));
	procStruct = (Form_pg_proc) FUNC0(procTup);

	/*
	 * Fetch pg_language entry to know if this is the correct validation
	 * function for that pg_proc entry.
	 */
	langTup = FUNC6(LANGOID, FUNC4(procStruct->prolang));
	if (!FUNC2(langTup))
		FUNC8(ERROR, "cache lookup failed for language %u", procStruct->prolang);
	langStruct = (Form_pg_language) FUNC0(langTup);

	if (langStruct->lanvalidator != validatorOid)
		FUNC9(ERROR,
				(FUNC10(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC11("language validation function %u called for language %u instead of %u",
						validatorOid, procStruct->prolang,
						langStruct->lanvalidator)));

	/* first validate that we have permissions to use the language */
	aclresult = FUNC12(procStruct->prolang, FUNC1(),
									 ACL_USAGE);
	if (aclresult != ACLCHECK_OK)
		FUNC7(aclresult, OBJECT_LANGUAGE,
					   FUNC3(langStruct->lanname));

	/*
	 * Check whether we are allowed to execute the function itself. If we can
	 * execute it, there should be no possible side-effect of
	 * compiling/validation that execution can't have.
	 */
	aclresult = FUNC13(functionOid, FUNC1(), ACL_EXECUTE);
	if (aclresult != ACLCHECK_OK)
		FUNC7(aclresult, OBJECT_FUNCTION, FUNC3(procStruct->proname));

	FUNC5(procTup);
	FUNC5(langTup);

	return true;
}