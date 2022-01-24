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

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

NTSTATUS FUNC3(int argc, wchar_t * argv[])
{
	wchar_t *buffer;
	if(FUNC2(TRUE, &buffer))
	{
		FUNC1(L"%s", buffer);
		FUNC0(buffer);
	}
	if(FUNC2(FALSE, &buffer))
	{
		FUNC1(L" (%s)", buffer);
		FUNC0(buffer);
	}
	FUNC1(L"\n");
	return STATUS_SUCCESS;
}