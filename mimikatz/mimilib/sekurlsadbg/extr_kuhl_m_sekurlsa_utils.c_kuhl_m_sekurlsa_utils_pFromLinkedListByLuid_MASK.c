#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
typedef  int ULONG ;
struct TYPE_2__ {scalar_t__ Flink; } ;
typedef  scalar_t__* PVOID ;
typedef  int /*<<< orphan*/  PLUID ;
typedef  TYPE_1__* PLIST_ENTRY ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  LUID ;

/* Variables and functions */
 int /*<<< orphan*/  LPTR ; 
 scalar_t__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ULONG_PTR FUNC4(ULONG_PTR pSecurityStruct, ULONG LUIDoffset, PLUID luidToFind)
{
	PVOID buffer;
	ULONG_PTR resultat = 0, pStruct = 0;
	
	if((buffer = FUNC0(LPTR, LUIDoffset + sizeof(LUID))))
	{
		if(FUNC2(pSecurityStruct, &pStruct, sizeof(PVOID), NULL))
		{
			while(pStruct != pSecurityStruct)
			{
				if(FUNC2(pStruct, buffer, LUIDoffset + sizeof(LUID), NULL))
				{
					if(FUNC3(luidToFind, (PLUID) ((PBYTE) buffer + LUIDoffset)))
					{
						resultat = pStruct;
						break;
					}
					pStruct = (ULONG_PTR) ((PLIST_ENTRY) buffer)->Flink;
				}
				else break;
			}
		}
		FUNC1(buffer);
	}
	return resultat;
}