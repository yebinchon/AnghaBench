#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* next; scalar_t__ DevicePath; int /*<<< orphan*/ * hWorkerThread; scalar_t__ dWorkerThread; int /*<<< orphan*/ * hKeepAliveThread; scalar_t__ dKeepAliveThread; int /*<<< orphan*/ * hBusy; } ;
typedef  TYPE_1__* PBUSYLIGHT_DEVICE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC5(PBUSYLIGHT_DEVICE devices, BOOL instantOff)
{
	PBUSYLIGHT_DEVICE tmp;
	while(devices)
	{
		if(devices->hBusy)
		{
			if(instantOff && (devices->hBusy != INVALID_HANDLE_VALUE))
				FUNC4(devices, FALSE);
			FUNC0(devices->hBusy);
			devices->hBusy = NULL;
		}
		devices->dKeepAliveThread = 0;
		if(devices->hKeepAliveThread)
		{
			FUNC2(devices->hKeepAliveThread, ERROR_SUCCESS);
			devices->hKeepAliveThread = NULL;
		}
		devices->dWorkerThread = 0;
		if(devices->hWorkerThread)
		{
			FUNC2(devices->hWorkerThread, ERROR_SUCCESS);
			devices->hWorkerThread = NULL;
		}
		if(devices->DevicePath)
			FUNC3(devices->DevicePath);
		tmp = devices->next;
		FUNC1(devices);
		devices = tmp;
	}
}