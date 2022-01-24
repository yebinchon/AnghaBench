#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ddi ;
struct TYPE_8__ {int dwSize; int dwDevType; int /*<<< orphan*/  tszProductName; int /*<<< orphan*/  tszInstanceName; void* guidProduct; void* guidInstance; } ;
typedef  TYPE_1__* LPDIDEVICEINSTANCEW ;
typedef  int DWORD ;
typedef  TYPE_1__ DIDEVICEINSTANCEW ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int DI8DEVTYPEMOUSE_TRADITIONAL ; 
 int DI8DEVTYPE_MOUSE ; 
 int DIDEVTYPEMOUSE_TRADITIONAL ; 
 int DIDEVTYPE_MOUSE ; 
 void* GUID_SysMouse ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(LPDIDEVICEINSTANCEW lpddi, DWORD version) {
    DWORD dwSize;
    DIDEVICEINSTANCEW ddi;
    
    dwSize = lpddi->dwSize;

    FUNC1("%d %p\n", dwSize, lpddi);
    
    FUNC3(lpddi, 0, dwSize);
    FUNC3(&ddi, 0, sizeof(ddi));

    ddi.dwSize = dwSize;
    ddi.guidInstance = GUID_SysMouse;/* DInput's GUID */
    ddi.guidProduct = GUID_SysMouse;
    if (version >= 0x0800)
        ddi.dwDevType = DI8DEVTYPE_MOUSE | (DI8DEVTYPEMOUSE_TRADITIONAL << 8);
    else
        ddi.dwDevType = DIDEVTYPE_MOUSE | (DIDEVTYPEMOUSE_TRADITIONAL << 8);
    FUNC0(CP_ACP, 0, "Mouse", -1, ddi.tszInstanceName, MAX_PATH);
    FUNC0(CP_ACP, 0, "Wine Mouse", -1, ddi.tszProductName, MAX_PATH);

    FUNC2(lpddi, &ddi, (dwSize < sizeof(ddi) ? dwSize : sizeof(ddi)));
}