
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PRINTER_INFO_2A ;
typedef int * LPBYTE ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetPrinterA (int ,int,int *,scalar_t__,scalar_t__*) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,int *) ;
 int TRACE (char*,scalar_t__) ;

__attribute__((used)) static PRINTER_INFO_2A * get_printer_infoA(HANDLE hprn)
{
    PRINTER_INFO_2A *pi2 = ((void*)0);
    DWORD needed = 0;
    BOOL res;

    res = GetPrinterA(hprn, 2, ((void*)0), 0, &needed);
    if (!res && (GetLastError() == ERROR_INSUFFICIENT_BUFFER)) {
        pi2 = HeapAlloc(GetProcessHeap(), 0, needed);
        res = GetPrinterA(hprn, 2, (LPBYTE)pi2, needed, &needed);
    }

    if (res)
        return pi2;

    TRACE("GetPrinterA failed with %u\n", GetLastError());
    HeapFree(GetProcessHeap(), 0, pi2);
    return ((void*)0);
}
