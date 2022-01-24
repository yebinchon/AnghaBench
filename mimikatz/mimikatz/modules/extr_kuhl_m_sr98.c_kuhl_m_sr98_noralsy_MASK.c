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
typedef  int USHORT ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  PCWCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC7(int argc, wchar_t * argv[])
{
	PCWCHAR szNumber;
	ULONG Number = 0, blocks[4];
	USHORT Year, i;// = 1999;

	if(FUNC5(argc, argv, L"year", &szNumber, L"1999"))
	{
		Number = FUNC6(szNumber, NULL, 0);
		if(Number <= 0xffff)
		{
			Year = (USHORT) Number;
			FUNC2(L" * Year        : %hu (0x%04x)\n", Year, Year);
			if(FUNC5(argc, argv, L"id", &szNumber, NULL))
			{
				Number = FUNC6(szNumber, NULL, 0);
				if(Number < 10000000)
				{
					FUNC2(L" * Tag ID      : %u (0x%08x)\n", Number, Number);
					FUNC3(blocks, Number, Year);
					FUNC2(L" * RAW         : ");
					for(i = 1; i < 4; i++)
						FUNC2(L"%08x", blocks[i]);
					FUNC2(L"\n");
					FUNC4(blocks, FUNC0(blocks));
				}
				else FUNC1(L"Tag Id (/id) must be in the [0;9999999] range - it was %u (0x%08x)\n", Number, Number);
			}
			else FUNC1(L"Tag Id (/id) is needed\n");
		}
		else FUNC1(L"Year (/year) must be in the [0;0xffff] range - it was %u (0x%08x)\n", Number, Number);
	}
	return STATUS_SUCCESS;
}