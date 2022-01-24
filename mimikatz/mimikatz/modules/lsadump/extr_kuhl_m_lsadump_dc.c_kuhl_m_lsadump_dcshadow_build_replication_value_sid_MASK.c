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
struct TYPE_3__ {int /*<<< orphan*/ * pVal; int /*<<< orphan*/  valLen; } ;
typedef  scalar_t__ PWSTR ;
typedef  int /*<<< orphan*/  PSID ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  TYPE_1__ ATTRVAL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL FUNC6(ATTRVAL* pVal, PWSTR szValue)
{
	PSID pSid;
	pVal->pVal = NULL;
	if(FUNC0((PCWSTR) szValue, &pSid))
	{
		pVal->valLen = FUNC1(pSid);
		if((pVal->pVal = (PBYTE) FUNC3(pVal->valLen)))
			FUNC5(pVal->pVal, pSid, pVal->valLen);
		else FUNC4(L"LocalAlloc");
		FUNC2(pSid);
	}
	else FUNC4(L"ConvertStringSidToSid");
	return pVal->pVal != NULL;
}