#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  Description; } ;
struct TYPE_12__ {int cb; int /*<<< orphan*/  DeviceID; int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  DeviceString; } ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_1__ DISPLAY_DEVICEA ;
typedef  TYPE_2__ D3DADAPTER_IDENTIFIER9 ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CCHDEVICENAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  MAX_DEVICE_IDENTIFIER_STRING ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

BOOL FUNC8(LPCSTR lpszDeviceName, D3DADAPTER_IDENTIFIER9* pIdentifier)
{
    DISPLAY_DEVICEA DisplayDevice;
    DWORD AdapterIndex;
    BOOL FoundDisplayDevice;

    FUNC7(&DisplayDevice, 0, sizeof(DISPLAY_DEVICEA));
    DisplayDevice.cb = sizeof(DISPLAY_DEVICEA);   

    AdapterIndex = 0;
    FoundDisplayDevice = FALSE;
    while (FUNC0(NULL, AdapterIndex, &DisplayDevice, 0) != FALSE)
    {
        if (FUNC5(lpszDeviceName, DisplayDevice.DeviceName) == 0)
        {
            FoundDisplayDevice = TRUE;
            break;
        }

        ++AdapterIndex;
    }

    /* No matching display device found? */
    if (FALSE == FoundDisplayDevice)
        return FALSE;

    FUNC6(pIdentifier->Description, DisplayDevice.DeviceString, MAX_DEVICE_IDENTIFIER_STRING);
    FUNC6(pIdentifier->DeviceName, DisplayDevice.DeviceName, CCHDEVICENAME);

    if (FUNC3(&DisplayDevice, pIdentifier) != FALSE)
        FUNC4(&DisplayDevice, pIdentifier);

    FUNC2(DisplayDevice.DeviceID, pIdentifier);

    FUNC1(pIdentifier);

    return TRUE;
}