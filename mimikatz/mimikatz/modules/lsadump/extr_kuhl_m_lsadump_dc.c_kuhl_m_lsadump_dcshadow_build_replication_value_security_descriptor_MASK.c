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
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_3__ {int /*<<< orphan*/ * pVal; int /*<<< orphan*/  valLen; } ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  int /*<<< orphan*/ * PSECURITY_DESCRIPTOR ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  TYPE_1__ ATTRVAL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDDL_REVISION_1 ; 

BOOL FUNC5(ATTRVAL* pVal, PWSTR szValue)
{
	ULONG len = 0;
	PSECURITY_DESCRIPTOR sddl = NULL;
	
	if(FUNC0(szValue, SDDL_REVISION_1, &sddl, &len))
	{
		pVal->valLen = len;
		pVal->pVal = (PBYTE) FUNC2(pVal->valLen);
		if(pVal->pVal)
			FUNC4(pVal->pVal, sddl, pVal->valLen);
		FUNC1(sddl);
	}
	else FUNC3(L"ConvertStringSecurityDescriptorToSecurityDescriptor");
	return pVal->pVal != NULL;
}