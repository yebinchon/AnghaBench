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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_2__ {int wDefault; void* wOutputOffset; void* wDeviceOffset; void* wDriverOffset; } ;
typedef  void* LPWSTR ;
typedef  TYPE_1__* LPDEVNAMES ;
typedef  int /*<<< orphan*/  const* LPCWSTR ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  DEVNAMES ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,long) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/  const*) ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/  const*,char) ; 

__attribute__((used)) static BOOL FUNC10(HGLOBAL *hmem, LPCWSTR DeviceDriverName,
				    LPCWSTR DeviceName, LPCWSTR OutputPort)
{
    long size;
    LPWSTR   pDevNamesSpace;
    LPWSTR   pTempPtr;
    LPDEVNAMES lpDevNames;
    WCHAR bufW[260];
    DWORD dwBufLen = FUNC0(bufW);
    const WCHAR *p;

    p = FUNC9( DeviceDriverName, '\\' );
    if (p) DeviceDriverName = p + 1;

    size = sizeof(WCHAR)*FUNC8(DeviceDriverName) + 2
            + sizeof(WCHAR)*FUNC8(DeviceName) + 2
            + sizeof(WCHAR)*FUNC8(OutputPort) + 2
            + sizeof(DEVNAMES);

    if(*hmem)
        *hmem = FUNC4(*hmem, size, GMEM_MOVEABLE);
    else
        *hmem = FUNC2(GMEM_MOVEABLE, size);
    if (*hmem == 0)
        return FALSE;

    pDevNamesSpace = FUNC3(*hmem);
    lpDevNames = (LPDEVNAMES) pDevNamesSpace;

    pTempPtr = (LPWSTR)((LPDEVNAMES)pDevNamesSpace + 1);
    FUNC7(pTempPtr, DeviceDriverName);
    lpDevNames->wDriverOffset = pTempPtr - pDevNamesSpace;

    pTempPtr += FUNC8(DeviceDriverName) + 1;
    FUNC7(pTempPtr, DeviceName);
    lpDevNames->wDeviceOffset = pTempPtr - pDevNamesSpace;

    pTempPtr += FUNC8(DeviceName) + 1;
    FUNC7(pTempPtr, OutputPort);
    lpDevNames->wOutputOffset = pTempPtr - pDevNamesSpace;

    FUNC1(bufW, &dwBufLen);
    lpDevNames->wDefault = (FUNC6(bufW, DeviceName) == 0) ? 1 : 0;
    FUNC5(*hmem);
    return TRUE;
}