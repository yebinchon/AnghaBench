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
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_5__ {TYPE_1__* deviceId; int /*<<< orphan*/  id; struct TYPE_5__* next; } ;
struct TYPE_4__ {int Capabilities; int /*<<< orphan*/  Description; } ;
typedef  TYPE_2__* PBUSYLIGHT_DEVICE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ isBusyLight ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/ * kuhl_m_busylight_capabilities_to_String ; 
 TYPE_2__* kuhl_m_busylight_devices ; 

NTSTATUS FUNC3(int argc, wchar_t * argv[])
{
	PBUSYLIGHT_DEVICE cur;
	DWORD i;

	if(isBusyLight)
	{
		for(cur = kuhl_m_busylight_devices; cur; cur = cur->next)
		{
			FUNC2(L"[%3u] %s ( ", cur->id, cur->deviceId->Description);
			for(i = 0; i < FUNC0(kuhl_m_busylight_capabilities_to_String); i++)
			{
				if((cur->deviceId->Capabilities >> i) & 1)
					FUNC2(L"%s, ", kuhl_m_busylight_capabilities_to_String[i]);
			}
			FUNC2(L")\n");
		}
	}
	else FUNC1(L"No BusyLight\n");
	return STATUS_SUCCESS;
}