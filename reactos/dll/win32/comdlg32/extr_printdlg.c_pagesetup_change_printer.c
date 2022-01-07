
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int pagesetup_data ;
struct TYPE_8__ {int pPortName; int pPrinterName; int pDriverPath; } ;
typedef TYPE_1__ PRINTER_INFO_2W ;
typedef int LPWSTR ;
typedef int * LPBYTE ;
typedef int HANDLE ;
typedef int DWORD ;
typedef TYPE_1__ DRIVER_INFO_3W ;
typedef TYPE_1__ DEVMODEW ;
typedef int BOOL ;


 int ClosePrinter (int ) ;
 int DM_OUT_BUFFER ;
 int DocumentPropertiesW (int ,int ,int ,TYPE_1__*,int *,int ) ;
 int ERR (char*,int ) ;
 int FALSE ;
 int GetPrinterDriverW (int ,int *,int,int *,int,int*) ;
 int GetPrinterW (int ,int,int *,int,int*) ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int OpenPrinterW (int ,int *,int *) ;
 int TRUE ;
 int debugstr_w (int ) ;
 int pagesetup_set_devmode (int *,TYPE_1__*) ;
 int pagesetup_set_devnames (int *,int ,int ,int ) ;

__attribute__((used)) static BOOL pagesetup_change_printer(LPWSTR name, pagesetup_data *data)
{
    HANDLE hprn;
    DWORD needed;
    PRINTER_INFO_2W *prn_info = ((void*)0);
    DRIVER_INFO_3W *drv_info = ((void*)0);
    DEVMODEW *dm = ((void*)0);
    BOOL retval = FALSE;

    if(!OpenPrinterW(name, &hprn, ((void*)0)))
    {
        ERR("Can't open printer %s\n", debugstr_w(name));
        goto end;
    }

    GetPrinterW(hprn, 2, ((void*)0), 0, &needed);
    prn_info = HeapAlloc(GetProcessHeap(), 0, needed);
    GetPrinterW(hprn, 2, (LPBYTE)prn_info, needed, &needed);
    GetPrinterDriverW(hprn, ((void*)0), 3, ((void*)0), 0, &needed);
    drv_info = HeapAlloc(GetProcessHeap(), 0, needed);
    if(!GetPrinterDriverW(hprn, ((void*)0), 3, (LPBYTE)drv_info, needed, &needed))
    {
        ERR("GetPrinterDriverA failed for %s, fix your config!\n", debugstr_w(prn_info->pPrinterName));
        goto end;
    }
    ClosePrinter(hprn);

    needed = DocumentPropertiesW(0, 0, name, ((void*)0), ((void*)0), 0);
    if(needed == -1)
    {
        ERR("DocumentProperties fails on %s\n", debugstr_w(name));
        goto end;
    }

    dm = HeapAlloc(GetProcessHeap(), 0, needed);
    DocumentPropertiesW(0, 0, name, dm, ((void*)0), DM_OUT_BUFFER);

    pagesetup_set_devmode(data, dm);
    pagesetup_set_devnames(data, drv_info->pDriverPath, prn_info->pPrinterName,
                           prn_info->pPortName);

    retval = TRUE;
end:
    HeapFree(GetProcessHeap(), 0, dm);
    HeapFree(GetProcessHeap(), 0, prn_info);
    HeapFree(GetProcessHeap(), 0, drv_info);
    return retval;
}
