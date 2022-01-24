#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ PostOperation; scalar_t__ PreOperation; int /*<<< orphan*/  Handle; int /*<<< orphan*/  Operations; } ;
typedef  TYPE_1__* POBJECT_CALLBACK_ENTRY ;
typedef  int /*<<< orphan*/  PKIWI_BUFFER ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

NTSTATUS FUNC3(POBJECT_CALLBACK_ENTRY pCallbackEntry, PKIWI_BUFFER outBuffer)
{
	NTSTATUS status = STATUS_SUCCESS;
	if(pCallbackEntry->PreOperation || pCallbackEntry->PostOperation)
	{
		status = FUNC2(outBuffer, L"\t* Callback [type %u] - Handle 0x%p (@ 0x%p)\n", pCallbackEntry->Operations, pCallbackEntry->Handle, pCallbackEntry);
		if(FUNC0(status) && pCallbackEntry->PreOperation)
		{
			status = FUNC2(outBuffer, L"\t\tPreOperation  : ");
			if(FUNC0(status))
				status = FUNC1(outBuffer, pCallbackEntry->PreOperation);
		}
		if(FUNC0(status) && pCallbackEntry->PostOperation)
		{
			status = FUNC2(outBuffer, L"\t\tPostOperation : ");
			if(FUNC0(status))
				status = FUNC1(outBuffer, pCallbackEntry->PostOperation);
		}
	}
	return status;
}