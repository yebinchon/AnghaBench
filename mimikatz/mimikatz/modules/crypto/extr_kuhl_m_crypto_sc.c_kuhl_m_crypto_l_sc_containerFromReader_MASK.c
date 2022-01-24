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
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  char* LPCWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

PWSTR FUNC3(LPCWSTR reader)
{
	PWSTR result = NULL;
	DWORD szReader = (DWORD) FUNC2(reader);
	if((result = (PWSTR) FUNC0(LPTR, (szReader + 6) * sizeof(wchar_t))))
	{
		FUNC1(result, L"\\\\.\\", 4 * sizeof(wchar_t));
		FUNC1(result + 4, reader, szReader * sizeof(wchar_t));
		FUNC1(result + 4 + szReader, L"\\", 1 * sizeof(wchar_t));
	}
	return result;
}