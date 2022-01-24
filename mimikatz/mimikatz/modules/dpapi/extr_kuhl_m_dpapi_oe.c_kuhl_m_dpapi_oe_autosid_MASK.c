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
typedef  int wchar_t ;
typedef  int /*<<< orphan*/  PSID ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int* FUNC6 (int*,int) ; 

BOOL FUNC7(LPCWSTR filename, LPWSTR * pSid)
{
	BOOL status = FALSE;
	wchar_t *duplicate, *pE;
	PSID tmpSid;
	if(filename && (duplicate = FUNC3(filename)))
	{
		if((pE = FUNC6(duplicate, L'\\')))
		{
			*pE = L'\0';
			if((pE = FUNC6(duplicate, L'\\')))
			{
				if(FUNC1(++pE, &tmpSid))
				{
					if((status = FUNC0(tmpSid, pSid)))
					{
						FUNC5(L"Auto SID from path seems to be: %s\n", *pSid);
					}
					FUNC2(tmpSid);
				}
			}
		}
		FUNC4(duplicate);
	}
	return status;
}