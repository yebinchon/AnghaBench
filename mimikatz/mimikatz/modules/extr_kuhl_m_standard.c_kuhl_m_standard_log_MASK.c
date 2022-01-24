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
typedef  int /*<<< orphan*/ * PCWCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/ * MIMIKATZ_DEFAULT_LOG ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

NTSTATUS FUNC3(int argc, wchar_t * argv[])
{
	PCWCHAR filename = (FUNC2(argc, argv, L"stop", NULL, NULL) ? NULL : (argc ? argv[0] : MIMIKATZ_DEFAULT_LOG));
	FUNC0(L"Using \'%s\' for logfile : %s\n", filename, FUNC1(filename) ? L"OK" : L"KO");
	return STATUS_SUCCESS;
}