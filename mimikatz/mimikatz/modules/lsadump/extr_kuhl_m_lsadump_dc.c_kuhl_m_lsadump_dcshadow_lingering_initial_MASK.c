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
struct TYPE_3__ {int /*<<< orphan*/  ld; int /*<<< orphan*/  szDsServiceName; int /*<<< orphan*/  szFakeDCNetBIOS; } ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  TYPE_1__* PDCSHADOW_DOMAIN_INFO ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_UNSUCCESSFUL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC3(PDCSHADOW_DOMAIN_INFO info, PWSTR szObjectToKill)
{
	NTSTATUS status = STATUS_UNSUCCESSFUL;
	PWSTR szTargetNTDS;
	if(FUNC2(&szTargetNTDS, L"CN=NTDS Settings,CN=%s%s", info->szFakeDCNetBIOS, info->szDsServiceName))
	{
		status = FUNC1(info->ld, szTargetNTDS, szObjectToKill);
		FUNC0(szTargetNTDS);
	}
	return status;
}