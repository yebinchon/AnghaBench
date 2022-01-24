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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  SID_NAME_USE ;
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  int /*<<< orphan*/ * PSID_NAME_USE ;
typedef  int /*<<< orphan*/  PSID ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 

BOOL FUNC4(PSID pSid, PWSTR * pName, PWSTR * pDomain, PSID_NAME_USE pSidNameUse, LPCWSTR system)
{
	BOOL result = FALSE;
	SID_NAME_USE sidNameUse;
	PSID_NAME_USE peUse = pSidNameUse ? pSidNameUse : &sidNameUse;
	DWORD cchName = 0, cchReferencedDomainName = 0;
	
	if(!FUNC3(system, pSid, NULL, &cchName, NULL, &cchReferencedDomainName, peUse) && (FUNC0() == ERROR_INSUFFICIENT_BUFFER))
	{
		if((*pName = (PWSTR) FUNC1(LPTR, cchName * sizeof(wchar_t))))
		{
			if((*pDomain = (PWSTR) FUNC1(LPTR, cchReferencedDomainName * sizeof(wchar_t))))
			{
				result = FUNC3(system, pSid, *pName, &cchName, *pDomain, &cchReferencedDomainName, peUse);
				if(!result)
					*pDomain = (PWSTR) FUNC2(*pDomain);
			}
			if(!result)
				*pName = (PWSTR) FUNC2(*pName);
		}
	}
	return result;
}