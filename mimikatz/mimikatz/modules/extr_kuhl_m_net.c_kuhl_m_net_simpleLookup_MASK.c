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
typedef  scalar_t__ UNICODE_STRING ;
typedef  int /*<<< orphan*/  SID_NAME_USE ;
typedef  int /*<<< orphan*/  SAMPR_HANDLE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__*,scalar_t__**,scalar_t__**) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(SAMPR_HANDLE hDomainHandle, DWORD rid)
{
	NTSTATUS status;
	UNICODE_STRING *name;
	DWORD *usage;

	status = FUNC3(hDomainHandle, 1, &rid, &name, &usage);
	if(FUNC0(status))
	{
		FUNC4(L"%wZ\t(%s)", name, FUNC5((SID_NAME_USE) *usage));
		FUNC2(name);
		FUNC2(usage);
	}
	else FUNC1(L"SamLookupIdsInDomain %08x", status);
}