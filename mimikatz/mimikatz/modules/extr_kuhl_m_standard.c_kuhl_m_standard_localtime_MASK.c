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
struct TYPE_3__ {int /*<<< orphan*/  DaylightName; int /*<<< orphan*/  StandardName; } ;
typedef  TYPE_1__ TIME_ZONE_INFORMATION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  FILETIME ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ TIME_ZONE_ID_INVALID ; 
 scalar_t__ TIME_ZONE_ID_STANDARD ; 
 scalar_t__ TIME_ZONE_ID_UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

NTSTATUS FUNC5(int argc, wchar_t * argv[])
{
	FILETIME ft;
	TIME_ZONE_INFORMATION tzi;
	DWORD dwTzi;
	FUNC0(&ft);
	dwTzi = FUNC1(&tzi);
	FUNC2(L"Local: "); FUNC4(&ft); FUNC2(L"\n");
	if(dwTzi != TIME_ZONE_ID_INVALID && dwTzi != TIME_ZONE_ID_UNKNOWN)
		FUNC2(L"Zone : %.32s\n", (dwTzi == TIME_ZONE_ID_STANDARD) ? tzi.StandardName : tzi.DaylightName);
	FUNC2(L"UTC  : "); FUNC3(&ft); FUNC2(L"\n");
	return STATUS_SUCCESS;
}