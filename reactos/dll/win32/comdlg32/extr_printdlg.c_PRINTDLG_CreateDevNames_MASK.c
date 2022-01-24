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
struct TYPE_2__ {int wDriverOffset; int wDeviceOffset; int wOutputOffset; int wDefault; } ;
typedef  TYPE_1__* LPDEVNAMES ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  DEVNAMES ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,long) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int FUNC8 (char const*) ; 
 char* FUNC9 (char const*,char) ; 

__attribute__((used)) static BOOL FUNC10(HGLOBAL *hmem, const char* DeviceDriverName,
				    const char* DeviceName, const char* OutputPort)
{
    long size;
    char*   pDevNamesSpace;
    char*   pTempPtr;
    LPDEVNAMES lpDevNames;
    char buf[260];
    DWORD dwBufLen = FUNC0(buf);
    const char *p;

    p = FUNC9( DeviceDriverName, '\\' );
    if (p) DeviceDriverName = p + 1;

    size = FUNC8(DeviceDriverName) + 1
            + FUNC8(DeviceName) + 1
            + FUNC8(OutputPort) + 1
            + sizeof(DEVNAMES);

    if(*hmem)
        *hmem = FUNC4(*hmem, size, GMEM_MOVEABLE);
    else
        *hmem = FUNC2(GMEM_MOVEABLE, size);
    if (*hmem == 0)
        return FALSE;

    pDevNamesSpace = FUNC3(*hmem);
    lpDevNames = (LPDEVNAMES) pDevNamesSpace;

    pTempPtr = pDevNamesSpace + sizeof(DEVNAMES);
    FUNC7(pTempPtr, DeviceDriverName);
    lpDevNames->wDriverOffset = pTempPtr - pDevNamesSpace;

    pTempPtr += FUNC8(DeviceDriverName) + 1;
    FUNC7(pTempPtr, DeviceName);
    lpDevNames->wDeviceOffset = pTempPtr - pDevNamesSpace;

    pTempPtr += FUNC8(DeviceName) + 1;
    FUNC7(pTempPtr, OutputPort);
    lpDevNames->wOutputOffset = pTempPtr - pDevNamesSpace;

    FUNC1(buf, &dwBufLen);
    lpDevNames->wDefault = (FUNC6(buf, DeviceName) == 0) ? 1 : 0;
    FUNC5(*hmem);
    return TRUE;
}