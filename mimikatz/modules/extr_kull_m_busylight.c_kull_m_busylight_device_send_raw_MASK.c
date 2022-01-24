#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ OutputReportByteLength; } ;
struct TYPE_5__ {scalar_t__ hBusy; int /*<<< orphan*/  id; TYPE_1__ hidCaps; } ;
typedef  TYPE_2__* PBUSYLIGHT_DEVICE ;
typedef  int /*<<< orphan*/  LPCVOID ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 

BOOL FUNC3(PBUSYLIGHT_DEVICE device, LPCVOID request, DWORD size)
{
	BOOL status = FALSE;
	DWORD writed;
	if(device && device->hBusy && (device->hBusy != INVALID_HANDLE_VALUE))
	{
		if(size <= device->hidCaps.OutputReportByteLength)
		{
			status = FUNC2(device->hBusy, request, size, &writed, NULL);
			if(!status)
				FUNC1(L"[device %u] WriteFile (0x%08x)\n", device->id, FUNC0());
		}
		else FUNC1(L"[device %u] Size is not valide (siz = %u, max = %u)\n", device->id, size, device->hidCaps.OutputReportByteLength);
	}
	else FUNC1(L"[device %u] Invalid Device/Busy Handle\n", device->id);
	return status;
}