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
typedef  int* RPC_WSTR ;
typedef  scalar_t__ RPC_STATUS ;
typedef  int* PBYTE ;
typedef  int* LPWSTR ;
typedef  int* LPCWSTR ;
typedef  int /*<<< orphan*/  LPCGUID ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 scalar_t__ RPC_S_OK ; 
 int /*<<< orphan*/  FUNC2 (int**) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int**) ; 
 int FUNC5 (int*) ; 

LPWSTR FUNC6(LPCGUID ServClass, LPCWSTR ServName, LPCGUID InstName)
{
	LPWSTR result = NULL;
	RPC_STATUS status;
	RPC_WSTR szServClass, szInstName;
	DWORD dwServClass, dwInstName, dwServName;
	status = FUNC4(ServClass, &szServClass);
	if(status == RPC_S_OK)
	{
		status = FUNC4(InstName, &szInstName);
		if(status == RPC_S_OK)
		{
			dwServClass = FUNC5((LPWSTR) szServClass) * sizeof(wchar_t);
			dwInstName = FUNC5((LPWSTR) szInstName) * sizeof(wchar_t);
			dwServName = FUNC5(ServName) * sizeof(wchar_t);
			if ((result = (LPWSTR) FUNC0(LPTR, dwServClass + sizeof(wchar_t) + dwInstName + sizeof(wchar_t) + dwServName)))
			{
				FUNC3(result, szServClass, dwServClass);
				FUNC3((PBYTE) result + dwServClass + sizeof(wchar_t), szInstName, dwInstName);
				((PBYTE) result)[dwServClass] = L'/';
				FUNC3((PBYTE) result + dwServClass + sizeof(wchar_t) + dwServName + sizeof(wchar_t), ServName, dwServName);
				((PBYTE) result)[dwServClass + sizeof(wchar_t) + dwServName] = L'/';
			}
			FUNC2(&szInstName);
		}
		else FUNC1(L"UuidToString(i): %08x\n", status);
		FUNC2(&szServClass);
	}
	else FUNC1(L"UuidToString(s): %08x\n", status);
	return result;
}