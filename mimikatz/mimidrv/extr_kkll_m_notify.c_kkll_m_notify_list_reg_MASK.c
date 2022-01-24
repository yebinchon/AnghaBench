#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
typedef  size_t ULONG ;
struct TYPE_7__ {scalar_t__ off1; } ;
struct TYPE_6__ {int /*<<< orphan*/  callback; } ;
struct TYPE_5__ {scalar_t__ Flink; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PUCHAR ;
typedef  TYPE_1__* PLIST_ENTRY ;
typedef  TYPE_2__* PKKLL_M_NOTIFY_CALLBACK ;
typedef  int /*<<< orphan*/  PKIWI_BUFFER ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t CM_REG_MAX_CALLBACKS ; 
 scalar_t__* CallbackListHeadOrCmpCallBackVector ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ KiwiOsIndex ; 
 scalar_t__ KiwiOsIndex_VISTA ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RegReferences ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,size_t) ; 
 TYPE_3__* pCmpCallBackOffsets ; 

NTSTATUS FUNC6(PKIWI_BUFFER outBuffer)
{
	NTSTATUS status = STATUS_SUCCESS;
	PKKLL_M_NOTIFY_CALLBACK pNotifyCallback;
	PLIST_ENTRY pEntry;
	ULONG i;

	if(!CallbackListHeadOrCmpCallBackVector)
		status = FUNC4(RegReferences, FUNC0(RegReferences), (PUCHAR *) &CallbackListHeadOrCmpCallBackVector, NULL, &pCmpCallBackOffsets);
	
	if(CallbackListHeadOrCmpCallBackVector)
	{
		if(KiwiOsIndex < KiwiOsIndex_VISTA)
		{
			for(i = 0; FUNC2(status) && (i < CM_REG_MAX_CALLBACKS); i++)
			{
				if((pNotifyCallback = (PKKLL_M_NOTIFY_CALLBACK) FUNC1(CallbackListHeadOrCmpCallBackVector[i])))
				{
					status = FUNC5(outBuffer, L"[%.2u] ", i);
					if(FUNC2(status))
						status = FUNC3(outBuffer, pNotifyCallback->callback);
				}
			}
		}
		else
		{
			for(pEntry = (PLIST_ENTRY) *CallbackListHeadOrCmpCallBackVector, i = 0 ; FUNC2(status) && (pEntry != (PLIST_ENTRY) CallbackListHeadOrCmpCallBackVector); pEntry = (PLIST_ENTRY) (pEntry->Flink), i++)
			{
				status = FUNC5(outBuffer, L"[%.2u] ", i);
				if(FUNC2(status))
					status = FUNC3(outBuffer, *(PVOID *) ((ULONG_PTR) pEntry + pCmpCallBackOffsets->off1));
			}
		}
	}
	return status;
}