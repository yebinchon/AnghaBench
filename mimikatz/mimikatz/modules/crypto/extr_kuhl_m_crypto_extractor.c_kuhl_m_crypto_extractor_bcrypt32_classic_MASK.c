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
struct TYPE_4__ {int /*<<< orphan*/  address; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/ * PKULL_M_MEMORY_HANDLE ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  TYPE_1__ KULL_M_MEMORY_ADDRESS ;
typedef  scalar_t__ DWORD32 ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  KULL_M_MEMORY_GLOBAL_OWN_HANDLE ; 
 int /*<<< orphan*/  LPTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(PKULL_M_MEMORY_HANDLE hMemory, DWORD32 addr, DWORD size, LPCWSTR num)
{
	KULL_M_MEMORY_ADDRESS address = {*FUNC2(addr), hMemory}, aLocalBuffer = {NULL, &KULL_M_MEMORY_GLOBAL_OWN_HANDLE};

	if(addr && size)
	{
		FUNC3(L"%s: ", num);
		if((aLocalBuffer.address = FUNC0(LPTR, size)))
		{
			if(FUNC4(&aLocalBuffer, &address, size))
				FUNC5(aLocalBuffer.address, size, 0);
			FUNC1(aLocalBuffer.address);
		}
		FUNC3(L"\n");
	}
}