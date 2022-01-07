
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LRESULT ;
typedef int HWND ;
typedef scalar_t__ DWORD ;


 int COMDLG32_hInstance ;
 int EnumPrintersW (int ,int *,int,int *,int ,scalar_t__*,scalar_t__*) ;
 int FALSE ;
 int LoadStringW (int ,int ,int *,int) ;
 int MB_ICONWARNING ;
 int MB_OK ;
 int MessageBoxW (int ,int *,int *,int) ;
 int PD32_NO_DEVICES ;
 int PD32_PRINT_TITLE ;
 int PRINTER_ENUM_CONNECTIONS ;
 int PRINTER_ENUM_LOCAL ;
 int TRUE ;

__attribute__((used)) static LRESULT check_printer_setup(HWND hDlg)
{
    DWORD needed,num;
    WCHAR resourcestr[256],resultstr[256];

    EnumPrintersW(PRINTER_ENUM_LOCAL, ((void*)0), 2, ((void*)0), 0, &needed, &num);
    if(needed == 0)
    {
          EnumPrintersW(PRINTER_ENUM_CONNECTIONS, ((void*)0), 2, ((void*)0), 0, &needed, &num);
    }
    if(needed > 0)
          return TRUE;
    else
    {
          LoadStringW(COMDLG32_hInstance, PD32_NO_DEVICES,resultstr, 255);
          LoadStringW(COMDLG32_hInstance, PD32_PRINT_TITLE,resourcestr, 255);
          MessageBoxW(hDlg, resultstr, resourcestr,MB_OK | MB_ICONWARNING);
          return FALSE;
    }
}
