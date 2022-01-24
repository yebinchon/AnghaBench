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
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_NO_TOKEN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TOKEN_QUERY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

NTSTATUS FUNC9(int argc, wchar_t * argv[])
{
	HANDLE hToken;
	FUNC7(L" * Process Token : ");
	if(FUNC4(FUNC1(), TOKEN_QUERY, &hToken))
	{
		FUNC8(hToken, argc);
		FUNC0(hToken);
	}
	else FUNC6(L"OpenProcessToken");

	FUNC7(L" * Thread Token  : ");
	if(FUNC5(FUNC2(), TOKEN_QUERY, TRUE, &hToken))
	{
		FUNC8(hToken, argc);
		FUNC0(hToken);
	}
	else if(FUNC3() == ERROR_NO_TOKEN)
		FUNC7(L"no token\n");
	else FUNC6(L"OpenThreadToken");

	return STATUS_SUCCESS;
}