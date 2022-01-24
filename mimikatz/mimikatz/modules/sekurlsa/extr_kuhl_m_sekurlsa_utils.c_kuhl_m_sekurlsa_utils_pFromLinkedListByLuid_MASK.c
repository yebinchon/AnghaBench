#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_8__ {scalar_t__ address; int /*<<< orphan*/  hMemory; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ ** member_0; } ;
struct TYPE_7__ {int /*<<< orphan*/ * Flink; } ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/  PLUID ;
typedef  TYPE_1__* PLIST_ENTRY ;
typedef  TYPE_2__* PKULL_M_MEMORY_ADDRESS ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  LUID ;
typedef  TYPE_2__ KULL_M_MEMORY_ADDRESS ;

/* Variables and functions */
 int /*<<< orphan*/  KULL_M_MEMORY_GLOBAL_OWN_HANDLE ; 
 int /*<<< orphan*/  LPTR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_2__*,int) ; 

PVOID FUNC4(PKULL_M_MEMORY_ADDRESS pSecurityStruct, ULONG LUIDoffset, PLUID luidToFind)
{
	PVOID resultat = NULL, pStruct;
	KULL_M_MEMORY_ADDRESS data = {&pStruct, KULL_M_MEMORY_GLOBAL_OWN_HANDLE}, aBuffer = {NULL, KULL_M_MEMORY_GLOBAL_OWN_HANDLE};

	if((aBuffer.address = FUNC0(LPTR, LUIDoffset + sizeof(LUID))))
	{
		if(FUNC3(&data, pSecurityStruct, sizeof(PVOID)))
		{
			data.address = pStruct;
			data.hMemory = pSecurityStruct->hMemory;

			while(data.address != pSecurityStruct->address)
			{
				if(FUNC3(&aBuffer, &data, LUIDoffset + sizeof(LUID)))
				{
					if(FUNC2(luidToFind, (PLUID) ((PBYTE)(aBuffer.address) + LUIDoffset)))
					{
						resultat = data.address;
						break;
					}
					data.address = ((PLIST_ENTRY) (aBuffer.address))->Flink;
				}
				else break;
			}
		}
		FUNC1(aBuffer.address);
	}
	return resultat;
}