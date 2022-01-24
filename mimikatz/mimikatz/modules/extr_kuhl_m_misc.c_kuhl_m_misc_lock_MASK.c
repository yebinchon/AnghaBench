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
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int /*<<< orphan*/  PCWCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kuhl_m_misc_lock_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,char*) ; 

NTSTATUS FUNC4(int argc, wchar_t * argv[])
{
	PCWCHAR process;
	UNICODE_STRING uProcess;
	FUNC3(argc, argv, L"process", &process, L"explorer.exe");
		FUNC0(&uProcess, process);
		FUNC1(L"Proxy process : %wZ\n", &uProcess);
		FUNC2(kuhl_m_misc_lock_callback, &uProcess);
	return STATUS_SUCCESS;
}