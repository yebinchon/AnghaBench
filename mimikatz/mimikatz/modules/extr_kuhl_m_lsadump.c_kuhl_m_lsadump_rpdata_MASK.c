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
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_3__ {int /*<<< orphan*/  Buffer; int /*<<< orphan*/  Length; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

NTSTATUS FUNC6(int argc, wchar_t * argv[])
{
	NTSTATUS status;
	UNICODE_STRING secret;
	LPCWSTR szName, szSystem = NULL;
	BOOL export = FUNC4(argc, argv, L"export", NULL, NULL); // todo
	BOOL isSecret = FUNC4(argc, argv, L"secret", NULL, NULL);
	if(FUNC4(argc, argv, L"name", &szName, NULL))
	{
		FUNC4(argc, argv, L"system", &szSystem, NULL);
		status = FUNC3(szSystem, szName, &secret, isSecret);
		if(FUNC1(status))
		{
			FUNC5(secret.Buffer, secret.Length, 1 | (16<<16));
			FUNC0(secret.Buffer);
		}
		else FUNC2(L"kuhl_m_lsadump_LsaRetrievePrivateData: 0x%08x\n", status);
	}
	return STATUS_SUCCESS;
}