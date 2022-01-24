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
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  PCWCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  IOCTL_MIMIDRV_PROCESS_FULLPRIV ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC3(int argc, wchar_t * argv[])
{
	PCWCHAR szPid;
	ULONG pid = 0;

	if(FUNC1(argc, argv, L"pid", &szPid, NULL))
		pid = FUNC2(szPid, NULL, 0);
	
	FUNC0(IOCTL_MIMIDRV_PROCESS_FULLPRIV, pid ? &pid : NULL, pid ? sizeof(ULONG) : 0);
	return STATUS_SUCCESS;
}