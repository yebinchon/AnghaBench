#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int ULONGLONG ;
typedef  int ULONG ;
struct TYPE_4__ {int /*<<< orphan*/  hDevice; } ;
typedef  TYPE_1__* PSR98_DEVICE ;
typedef  int /*<<< orphan*/  PCWCHAR ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__**,int*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC11(int argc, wchar_t * argv[])
{
	PCWCHAR szNumber;
	ULONGLONG Number = 0;
	ULONG blocks[3];
	PSR98_DEVICE devices;
	ULONG count;

	if(FUNC7(argc, argv, L"read", NULL, NULL))
	{
		FUNC4(L"\nEM4100 reader\n\n");
		if(FUNC9(&devices, &count))
		{
			if(count == 1)
			{
				if(FUNC10(devices->hDevice, (PBYTE) &Number))
				{
					Number = FUNC2(Number);
					Number >>= 24;
					FUNC4(L" * Tag ID      : %I64u (0x%I64x)\n", Number, Number);
				}
				else FUNC1(L"sr98_read_emid\n");
			}
			else FUNC1(L"Reader device is not unique (%u)\n", count);
			FUNC8(devices);
		}
	}
	else if(FUNC7(argc, argv, L"id", &szNumber, NULL))
	{
		FUNC4(L"\nEM4100 encoder\n\n");
		Number = FUNC3(szNumber, NULL, 0);
		if((Number < 0x10000000000))
		{
			FUNC4(L" * Tag ID      : %I64u (0x%I64x)\n", Number, Number);
			FUNC5(blocks, Number);
			FUNC4(L" * EM4100      : 0x%08x%08x\n", blocks[1], blocks[2]);
			FUNC6(blocks, FUNC0(blocks));
		}
		else FUNC1(L"Tag Id (/id) must be in the [0;255] range - it was %I64u (0x%I64x)\n", Number, Number);
	}
	else FUNC1(L"Tag Id (/id) is needed, or /read\n");
	return STATUS_SUCCESS;
}