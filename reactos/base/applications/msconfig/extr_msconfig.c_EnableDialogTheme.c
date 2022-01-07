
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef scalar_t__ HMODULE ;
typedef int (* ETDTProc ) (int ,int ) ;
typedef int BOOL ;


 int ETDT_ENABLETAB ;
 int FALSE ;
 int FreeLibrary (scalar_t__) ;
 scalar_t__ GetProcAddress (scalar_t__,char*) ;
 scalar_t__ LoadLibrary (int ) ;
 int TRUE ;
 int _T (char*) ;

BOOL EnableDialogTheme(HWND hwnd)
{
    HMODULE hUXTheme;
    ETDTProc fnEnableThemeDialogTexture;

    hUXTheme = LoadLibrary(_T("uxtheme.dll"));

    if(hUXTheme)
    {
        fnEnableThemeDialogTexture =
            (ETDTProc)GetProcAddress(hUXTheme, "EnableThemeDialogTexture");

        if(fnEnableThemeDialogTexture)
        {
            fnEnableThemeDialogTexture(hwnd, ETDT_ENABLETAB);

            FreeLibrary(hUXTheme);
            return TRUE;
        }
        else
        {

            FreeLibrary(hUXTheme);
            return FALSE;
        }
    }
    else
    {

        return FALSE;
    }
}
