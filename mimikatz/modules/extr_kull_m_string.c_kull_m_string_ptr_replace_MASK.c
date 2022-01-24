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
typedef  int /*<<< orphan*/  SIZE_T ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  scalar_t__ DWORD64 ;

/* Variables and functions */
 int /*<<< orphan*/  LPTR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

void FUNC2(PVOID ptr, DWORD64 size)
{
	PVOID tempPtr = NULL;
	if(size)
		if((tempPtr = FUNC0(LPTR, (SIZE_T) size)))
			FUNC1(tempPtr, *(PVOID *) ptr, (size_t) size);
	*(PVOID *) ptr = tempPtr;
}