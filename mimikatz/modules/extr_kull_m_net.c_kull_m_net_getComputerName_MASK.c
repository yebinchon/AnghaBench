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
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  COMPUTER_NAME_FORMAT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ComputerNamePhysicalDnsFullyQualified ; 
 int /*<<< orphan*/  ComputerNamePhysicalNetBIOS ; 
 scalar_t__ ERROR_MORE_DATA ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

BOOL FUNC5(BOOL isFull, LPWSTR *name)
{
	BOOL status = FALSE;
	COMPUTER_NAME_FORMAT ft = isFull ? ComputerNamePhysicalDnsFullyQualified : ComputerNamePhysicalNetBIOS;
	DWORD dwSize = 0;
	if(!FUNC0(ft, NULL, &dwSize) && (FUNC1() == ERROR_MORE_DATA))
	{
		if((*name = (wchar_t *) FUNC2(LPTR, dwSize * sizeof(wchar_t))))
		{
			if(!(status = FUNC0(ft, *name, &dwSize)))
			{
				FUNC4(L"GetComputerNameEx(data)");
				FUNC3(*name);
			}
		}
	}
	else FUNC4(L"GetComputerNameEx(init)");
	return status;
}