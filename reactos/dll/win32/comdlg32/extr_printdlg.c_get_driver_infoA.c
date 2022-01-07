
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPBYTE ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;
typedef int DRIVER_INFO_3A ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetPrinterDriverA (int ,int *,int,int *,scalar_t__,scalar_t__*) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,int *) ;
 int TRACE (char*,scalar_t__) ;

__attribute__((used)) static DRIVER_INFO_3A * get_driver_infoA(HANDLE hprn)
{
    DRIVER_INFO_3A *di3 = ((void*)0);
    DWORD needed = 0;
    BOOL res;

    res = GetPrinterDriverA(hprn, ((void*)0), 3, ((void*)0), 0, &needed);
    if (!res && (GetLastError() == ERROR_INSUFFICIENT_BUFFER)) {
        di3 = HeapAlloc(GetProcessHeap(), 0, needed);
        res = GetPrinterDriverA(hprn, ((void*)0), 3, (LPBYTE)di3, needed, &needed);
    }

    if (res)
        return di3;

    TRACE("GetPrinterDriverA failed with %u\n", GetLastError());
    HeapFree(GetProcessHeap(), 0, di3);
    return ((void*)0);
}
