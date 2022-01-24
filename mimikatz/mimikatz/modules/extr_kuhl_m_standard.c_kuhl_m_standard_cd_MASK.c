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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **) ; 

NTSTATUS FUNC5(int argc, wchar_t * argv[])
{
	wchar_t * buffer;
	if(FUNC4(&buffer))
	{
		if(argc)
			FUNC3(L"Cur: ");
		FUNC3(L"%s\n", buffer);
		FUNC0(buffer);
	}
	else FUNC1(L"kull_m_file_getCurrentDirectory");

	if(argc)
	{
		if(FUNC2(argv[0]))
		{
			if(FUNC4(&buffer))
			{
				FUNC3(L"New: %s\n", buffer);
				FUNC0(buffer);
			}
			else FUNC1(L"kull_m_file_getCurrentDirectory");
		}
		else FUNC1(L"SetCurrentDirectory");
	}
	return STATUS_SUCCESS;
}