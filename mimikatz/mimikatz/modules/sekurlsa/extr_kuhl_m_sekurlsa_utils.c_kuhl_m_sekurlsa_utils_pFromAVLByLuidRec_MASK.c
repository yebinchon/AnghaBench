#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_11__ {scalar_t__ address; int /*<<< orphan*/ * member_1; TYPE_2__* member_0; } ;
struct TYPE_10__ {int /*<<< orphan*/ * address; } ;
struct TYPE_8__ {int /*<<< orphan*/ * RightChild; int /*<<< orphan*/ * LeftChild; } ;
struct TYPE_9__ {TYPE_1__ BalancedRoot; int /*<<< orphan*/ * OrderedPointer; } ;
typedef  TYPE_2__ RTL_AVL_TABLE ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/  PLUID ;
typedef  TYPE_3__* PKULL_M_MEMORY_ADDRESS ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  LUID ;
typedef  TYPE_4__ KULL_M_MEMORY_ADDRESS ;

/* Variables and functions */
 int /*<<< orphan*/  KULL_M_MEMORY_GLOBAL_OWN_HANDLE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_4__*,TYPE_3__*,int) ; 

PVOID FUNC4(PKULL_M_MEMORY_ADDRESS pTable, ULONG LUIDoffset, PLUID luidToFind)
{
	PVOID resultat = NULL;
	RTL_AVL_TABLE maTable;
	KULL_M_MEMORY_ADDRESS data = {&maTable, &KULL_M_MEMORY_GLOBAL_OWN_HANDLE};

	if(FUNC3(&data, pTable, sizeof(RTL_AVL_TABLE)))
	{
		if((pTable->address = maTable.OrderedPointer))
		{
			if((data.address = FUNC0(LPTR, LUIDoffset + sizeof(LUID))))
			{
				if(FUNC3(&data, pTable, LUIDoffset + sizeof(LUID)))
				{
					if(FUNC2(luidToFind, (PLUID) ((PBYTE) (data.address) + LUIDoffset)))
						resultat = maTable.OrderedPointer;
				}
				FUNC1(data.address);
			}
		}
		if(!resultat && (pTable->address = maTable.BalancedRoot.LeftChild))
			resultat = FUNC4(pTable, LUIDoffset, luidToFind);
		if(!resultat && (pTable->address = maTable.BalancedRoot.RightChild))
			resultat = FUNC4(pTable, LUIDoffset, luidToFind);
	}
	return resultat;
}