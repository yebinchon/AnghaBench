#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_21__ {int Protect; } ;
struct TYPE_20__ {scalar_t__ address; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_17__ {int /*<<< orphan*/ * hMemory; } ;
struct TYPE_18__ {TYPE_1__ kull_m_memoryAdress; } ;
struct TYPE_19__ {scalar_t__ result; TYPE_2__ kull_m_memoryRange; } ;
typedef  int /*<<< orphan*/  SIZE_T ;
typedef  int /*<<< orphan*/  (* PKULL_M_PATCH_CALLBACK ) (int,int /*<<< orphan*/ **) ;
typedef  TYPE_3__* PKULL_M_MEMORY_SEARCH ;
typedef  TYPE_4__* PKULL_M_MEMORY_ADDRESS ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_5__ MEMORY_BASIC_INFORMATION ;
typedef  scalar_t__ LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  TYPE_4__ KULL_M_MEMORY_ADDRESS ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  KULL_M_MEMORY_GLOBAL_OWN_HANDLE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int PAGE_EXECUTE_READWRITE ; 
 int PAGE_READWRITE ; 
 int TRUE ; 
 int FUNC2 (TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,TYPE_5__*) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*,int) ; 

BOOL FUNC6(PKULL_M_MEMORY_SEARCH sMemory, PKULL_M_MEMORY_ADDRESS pPattern, SIZE_T szPattern, PKULL_M_MEMORY_ADDRESS pPatch, SIZE_T szPatch, LONG offsetOfPatch, PKULL_M_PATCH_CALLBACK pCallBackBeforeRestore, int argc, wchar_t * args[], NTSTATUS * pRetCallBack)
{
	BOOL result = FALSE, resultBackup = !pCallBackBeforeRestore, resultProtect = TRUE;
	KULL_M_MEMORY_ADDRESS destination = {NULL, sMemory->kull_m_memoryRange.kull_m_memoryAdress.hMemory};
	KULL_M_MEMORY_ADDRESS backup = {NULL, &KULL_M_MEMORY_GLOBAL_OWN_HANDLE};
	MEMORY_BASIC_INFORMATION readInfos;
	NTSTATUS status;
	DWORD flags, oldProtect = 0, tempProtect = 0;
	
	if(FUNC5(pPattern, szPattern, sMemory, TRUE))
	{
		destination.address = (LPBYTE) sMemory->result + offsetOfPatch;

		if(!resultBackup)
			if((backup.address = FUNC0(LPTR, szPatch)))
				resultBackup = FUNC2(&backup, &destination, szPatch);

		if(resultBackup)
		{
			if(FUNC4(&destination, &readInfos))
			{
				flags = readInfos.Protect & ~0xff;
				if((readInfos.Protect & 0x0f) && ((readInfos.Protect & 0x0f) < PAGE_READWRITE))
					tempProtect = PAGE_READWRITE;
				else if((readInfos.Protect & 0xf0) && ((readInfos.Protect & 0xf0) < PAGE_EXECUTE_READWRITE))
					tempProtect = PAGE_EXECUTE_READWRITE;
				
				if(tempProtect)
					resultProtect = FUNC3(&destination, szPatch, tempProtect | flags, &oldProtect);

				if(resultProtect)
				{
					if((result = FUNC2(&destination, pPatch, szPatch)))
					{
						if(pCallBackBeforeRestore)
						{
							status = pCallBackBeforeRestore(argc, args);
							if(pRetCallBack)
								*pRetCallBack = status;
							result = FUNC2(&destination, &backup, szPatch);
						}
					}
					if(oldProtect)
						FUNC3(&destination, szPatch, oldProtect, NULL);
				}
			}
			if(backup.address)
				FUNC1(backup.address);
		}
	}
	return result;
}