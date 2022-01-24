#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int ULONG ;
typedef  size_t UCHAR ;
struct TYPE_7__ {int toProg; int data; } ;
struct TYPE_6__ {int /*<<< orphan*/  hDevice; } ;
typedef  TYPE_1__* PSR98_DEVICE ;
typedef  int /*<<< orphan*/  PCWCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_2__ KUHL_M_SR98_RAW_BLOCK ;
typedef  int BOOLEAN ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__*) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__**,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC11(int argc, wchar_t * argv[])
{
	KUHL_M_SR98_RAW_BLOCK blocks[8];
	PSR98_DEVICE devices;
	ULONG count;
	PCWCHAR szBlock;
	UCHAR i;
	BOOLEAN isBlock = FALSE, isWipe = FUNC5(argc, argv, L"wipe", NULL, NULL);
	
	if((isBlock |= (blocks[0].toProg = FUNC5(argc, argv, L"b0", &szBlock, NULL))))
	{
		blocks[0].data = FUNC10(szBlock, NULL, 0);
		FUNC4(blocks[0].data);
	}
	if((isBlock |= (blocks[1].toProg = FUNC5(argc, argv, L"b1", &szBlock, NULL))))
		blocks[1].data = FUNC10(szBlock, NULL, 0);
	if((isBlock |= (blocks[2].toProg = FUNC5(argc, argv, L"b2", &szBlock, NULL))))
		blocks[2].data = FUNC10(szBlock, NULL, 0);
	if((isBlock |= (blocks[3].toProg = FUNC5(argc, argv, L"b3", &szBlock, NULL))))
		blocks[3].data = FUNC10(szBlock, NULL, 0);
	if((isBlock |= (blocks[4].toProg = FUNC5(argc, argv, L"b4", &szBlock, NULL))))
		blocks[4].data = FUNC10(szBlock, NULL, 0);
	if((isBlock |= (blocks[5].toProg = FUNC5(argc, argv, L"b5", &szBlock, NULL))))
		blocks[5].data = FUNC10(szBlock, NULL, 0);
	if((isBlock |= (blocks[6].toProg = FUNC5(argc, argv, L"b6", &szBlock, NULL))))
		blocks[6].data = FUNC10(szBlock, NULL, 0);
	if((isBlock |= (blocks[7].toProg = FUNC5(argc, argv, L"b7", &szBlock, NULL))))
	{
		blocks[7].data = FUNC10(szBlock, NULL, 0);
		if(blocks[0].toProg && (blocks[0].data & 0x10)) // check PWD
			FUNC3(L"\n> blocks[0] indicates PWD, blocks[7] will be the password (0x%08x)\n", blocks[7].data);
	}

	if(isBlock || isWipe)
	{
		if(FUNC7(&devices, &count))
		{
			if(count == 1)
			{
				if(isWipe)
				{
					FUNC3(L"\n * Wipe T5577 tag...\n");
					FUNC8(devices->hDevice, TRUE);
				}
				if(isBlock)
				{
					FUNC3(L"\n * Write operations...\n");
					for(i = 0; i < FUNC0(blocks); i++)
					{
						if(blocks[i].toProg)
						{
							FUNC3(L"   [%hhu] 0x%08x\n", i, blocks[i].data);
							FUNC9(devices->hDevice, 0, i, FUNC2(blocks[i].data), FALSE, 0);
						}
					}
				}
			}
			else FUNC1(L"Reader device is not unique (%u)\n", count);
			FUNC6(devices);
		}
	}
	else FUNC1(L"No operation\n");
	return STATUS_SUCCESS;
}