
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_2__ {int wDefault; void* wOutputOffset; void* wDeviceOffset; void* wDriverOffset; } ;
typedef void* LPWSTR ;
typedef TYPE_1__* LPDEVNAMES ;
typedef int const* LPCWSTR ;
typedef int HGLOBAL ;
typedef int DWORD ;
typedef int DEVNAMES ;
typedef int BOOL ;


 int ARRAY_SIZE (int *) ;
 int FALSE ;
 int GMEM_MOVEABLE ;
 int GetDefaultPrinterW (int *,int *) ;
 int GlobalAlloc (int ,long) ;
 void* GlobalLock (int ) ;
 int GlobalReAlloc (int ,long,int ) ;
 int GlobalUnlock (int ) ;
 int TRUE ;
 scalar_t__ lstrcmpW (int *,int const*) ;
 int lstrcpyW (void*,int const*) ;
 int lstrlenW (int const*) ;
 int * wcsrchr (int const*,char) ;

__attribute__((used)) static BOOL PRINTDLG_CreateDevNamesW(HGLOBAL *hmem, LPCWSTR DeviceDriverName,
        LPCWSTR DeviceName, LPCWSTR OutputPort)
{
    long size;
    LPWSTR pDevNamesSpace;
    LPWSTR pTempPtr;
    LPDEVNAMES lpDevNames;
    WCHAR bufW[260];
    DWORD dwBufLen = ARRAY_SIZE(bufW);
    const WCHAR *p;

    p = wcsrchr( DeviceDriverName, '\\' );
    if (p) DeviceDriverName = p + 1;

    size = sizeof(WCHAR)*lstrlenW(DeviceDriverName) + 2
            + sizeof(WCHAR)*lstrlenW(DeviceName) + 2
            + sizeof(WCHAR)*lstrlenW(OutputPort) + 2
            + sizeof(DEVNAMES);

    if(*hmem)
        *hmem = GlobalReAlloc(*hmem, size, GMEM_MOVEABLE);
    else
        *hmem = GlobalAlloc(GMEM_MOVEABLE, size);
    if (*hmem == 0)
        return FALSE;

    pDevNamesSpace = GlobalLock(*hmem);
    lpDevNames = (LPDEVNAMES) pDevNamesSpace;

    pTempPtr = (LPWSTR)((LPDEVNAMES)pDevNamesSpace + 1);
    lstrcpyW(pTempPtr, DeviceDriverName);
    lpDevNames->wDriverOffset = pTempPtr - pDevNamesSpace;

    pTempPtr += lstrlenW(DeviceDriverName) + 1;
    lstrcpyW(pTempPtr, DeviceName);
    lpDevNames->wDeviceOffset = pTempPtr - pDevNamesSpace;

    pTempPtr += lstrlenW(DeviceName) + 1;
    lstrcpyW(pTempPtr, OutputPort);
    lpDevNames->wOutputOffset = pTempPtr - pDevNamesSpace;

    GetDefaultPrinterW(bufW, &dwBufLen);
    lpDevNames->wDefault = (lstrcmpW(bufW, DeviceName) == 0) ? 1 : 0;
    GlobalUnlock(*hmem);
    return TRUE;
}
