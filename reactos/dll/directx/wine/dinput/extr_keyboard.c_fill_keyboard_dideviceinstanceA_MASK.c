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
typedef  TYPE_1__* LPDIDEVICEINSTANCEA ;
typedef  int DWORD ;
typedef  TYPE_1__ DIDEVICEINSTANCEA ;

/* Variables and functions */
 int DI8DEVTYPE_KEYBOARD ; 
 int DIDEVTYPE_KEYBOARD ; 
 void* GUID_SysKeyboard ; 
 int /*<<< orphan*/  FUNC0 (char*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(LPDIDEVICEINSTANCEA lpddi, DWORD version, DWORD subtype) {
    DWORD dwSize;
    DIDEVICEINSTANCEA ddi;
    
    dwSize = lpddi->dwSize;

    FUNC0("%d %p\n", dwSize, lpddi);
    
    FUNC2(lpddi, 0, dwSize);
    FUNC2(&ddi, 0, sizeof(ddi));

    ddi.dwSize = dwSize;
    ddi.guidInstance = GUID_SysKeyboard;/* DInput's GUID */
    ddi.guidProduct = GUID_SysKeyboard;
    if (version >= 0x0800)
        ddi.dwDevType = DI8DEVTYPE_KEYBOARD | (subtype << 8);
    else
        ddi.dwDevType = DIDEVTYPE_KEYBOARD | (subtype << 8);
    FUNC3(ddi.tszInstanceName, "Keyboard");
    FUNC3(ddi.tszProductName, "Wine Keyboard");

    FUNC1(lpddi, &ddi, (dwSize < sizeof(ddi) ? dwSize : sizeof(ddi)));
}