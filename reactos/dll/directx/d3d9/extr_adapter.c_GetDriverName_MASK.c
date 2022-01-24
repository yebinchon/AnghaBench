#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* Driver; } ;
struct TYPE_5__ {scalar_t__ DeviceKey; } ;
typedef  TYPE_1__* LPDISPLAY_DEVICEA ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  size_t DWORD ;
typedef  TYPE_2__ D3DADAPTER_IDENTIFIER9 ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 size_t MAX_DEVICE_IDENTIFIER_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static BOOL FUNC5(LPDISPLAY_DEVICEA pDisplayDevice, D3DADAPTER_IDENTIFIER9* pIdentifier)
{
    HKEY hKey;
    BOOL bResult = FALSE;

    if (ERROR_SUCCESS == FUNC1(HKEY_LOCAL_MACHINE, pDisplayDevice->DeviceKey + FUNC4("\\Registry\\Machine\\"), 0, KEY_QUERY_VALUE, &hKey))
    {
        DWORD DriverNameLength = MAX_DEVICE_IDENTIFIER_STRING - (DWORD)FUNC4(".dll");
        DWORD Type = 0;

        if (ERROR_SUCCESS == FUNC2(hKey, "InstalledDisplayDrivers", 0, &Type, (LPBYTE)pIdentifier->Driver, &DriverNameLength))
        {
            pIdentifier->Driver[DriverNameLength] = '\0';
            FUNC3(pIdentifier->Driver, MAX_DEVICE_IDENTIFIER_STRING, ".dll");
            bResult = TRUE;
        }

        FUNC0(hKey);
    }

    return bResult;
}