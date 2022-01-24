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
typedef  size_t ULONG ;
struct TYPE_2__ {int /*<<< orphan*/  callback; } ;
typedef  int /*<<< orphan*/  SIZE_T ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  size_t* PULONG ;
typedef  scalar_t__ PUCHAR ;
typedef  TYPE_1__* PKKLL_M_NOTIFY_CALLBACK ;
typedef  int /*<<< orphan*/  PKKLL_M_MEMORY_GENERIC ;
typedef  int /*<<< orphan*/  PKIWI_BUFFER ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t) ; 

NTSTATUS FUNC5(PKIWI_BUFFER outBuffer, PKKLL_M_MEMORY_GENERIC generics, SIZE_T cbGenerics, PUCHAR * ptr, PULONG pRoutineMax)
{
	NTSTATUS status = STATUS_SUCCESS;
	PKKLL_M_NOTIFY_CALLBACK pNotifyCallback;
	ULONG i;
	
	if(!*ptr)
		status = FUNC3(generics, cbGenerics, ptr, pRoutineMax, NULL);

	if(*ptr)
	{
		for(i = 0; FUNC1(status) && (i < *pRoutineMax); i++)
		{
			if((pNotifyCallback = (PKKLL_M_NOTIFY_CALLBACK) FUNC0(((PVOID *) *ptr)[i])))
			{
				status = FUNC4(outBuffer, L"[%.2u] ", i);
				if(FUNC1(status))
					status = FUNC2(outBuffer, pNotifyCallback->callback);
			}
		}
	}
	return status;
}