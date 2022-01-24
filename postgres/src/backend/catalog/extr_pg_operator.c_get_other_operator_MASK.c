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
 int /*<<< orphan*/  ACL_CREATE ; 
 int /*<<< orphan*/  ERRCODE_INVALID_FUNCTION_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  OBJECT_SCHEMA ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int*) ; 
 scalar_t__ FUNC3 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*,char const*) ; 

__attribute__((used)) static Oid
FUNC12(List *otherOp, Oid otherLeftTypeId, Oid otherRightTypeId,
				   const char *operatorName, Oid operatorNamespace,
				   Oid leftTypeId, Oid rightTypeId, bool isCommutator)
{
	Oid			other_oid;
	bool		otherDefined;
	char	   *otherName;
	Oid			otherNamespace;
	AclResult	aclresult;

	other_oid = FUNC2(otherOp,
							   otherLeftTypeId,
							   otherRightTypeId,
							   &otherDefined);

	if (FUNC1(other_oid))
	{
		/* other op already in catalogs */
		return other_oid;
	}

	otherNamespace = FUNC4(otherOp,
													   &otherName);

	if (FUNC11(otherName, operatorName) == 0 &&
		otherNamespace == operatorNamespace &&
		otherLeftTypeId == leftTypeId &&
		otherRightTypeId == rightTypeId)
	{
		/*
		 * self-linkage to this operator; caller will fix later. Note that
		 * only self-linkage for commutation makes sense.
		 */
		if (!isCommutator)
			FUNC6(ERROR,
					(FUNC7(ERRCODE_INVALID_FUNCTION_DEFINITION),
					 FUNC8("operator cannot be its own negator or sort operator")));
		return InvalidOid;
	}

	/* not in catalogs, different from operator, so make shell */

	aclresult = FUNC10(otherNamespace, FUNC0(),
									  ACL_CREATE);
	if (aclresult != ACLCHECK_OK)
		FUNC5(aclresult, OBJECT_SCHEMA,
					   FUNC9(otherNamespace));

	other_oid = FUNC3(otherName,
								  otherNamespace,
								  otherLeftTypeId,
								  otherRightTypeId);
	return other_oid;
}