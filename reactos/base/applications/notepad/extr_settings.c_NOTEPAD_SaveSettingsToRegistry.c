
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int left; int top; int right; int bottom; } ;
struct TYPE_6__ {int left; int top; int right; int bottom; } ;
struct TYPE_5__ {int lfCharSet; int lfClipPrecision; int lfEscapement; int lfItalic; int lfOrientation; int lfOutPrecision; int lfPitchAndFamily; int lfQuality; int lfStrikeOut; int lfUnderline; int lfWeight; int lfHeight; int lfFaceName; } ;
struct TYPE_7__ {TYPE_4__ main_rect; TYPE_2__ lMargins; int szFooter; int szHeader; scalar_t__ bShowStatusBar; scalar_t__ bWrapLongLines; TYPE_1__ lfFont; int hMainWnd; } ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int GetWindowRect (int ,TYPE_4__*) ;
 TYPE_3__ Globals ;
 int HKEY_CURRENT_USER ;
 int KEY_SET_VALUE ;
 int PointSizeFromHeight (int ) ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyEx (int ,int ,int ,int *,int ,int ,int *,int *,int *) ;
 int SaveDword (int ,int ,int) ;
 int SaveString (int ,int ,int ) ;
 int _T (char*) ;
 int s_szRegistryKey ;

void NOTEPAD_SaveSettingsToRegistry(void)
{
    HKEY hKey;
    DWORD dwDisposition;

    GetWindowRect(Globals.hMainWnd, &Globals.main_rect);

    if (RegCreateKeyEx(HKEY_CURRENT_USER, s_szRegistryKey,
                       0, ((void*)0), 0, KEY_SET_VALUE, ((void*)0),
                       &hKey, &dwDisposition) == ERROR_SUCCESS)
    {
        SaveDword(hKey, _T("lfCharSet"), Globals.lfFont.lfCharSet);
        SaveDword(hKey, _T("lfClipPrecision"), Globals.lfFont.lfClipPrecision);
        SaveDword(hKey, _T("lfEscapement"), Globals.lfFont.lfEscapement);
        SaveString(hKey, _T("lfFaceName"), Globals.lfFont.lfFaceName);
        SaveDword(hKey, _T("lfItalic"), Globals.lfFont.lfItalic);
        SaveDword(hKey, _T("lfOrientation"), Globals.lfFont.lfOrientation);
        SaveDword(hKey, _T("lfOutPrecision"), Globals.lfFont.lfOutPrecision);
        SaveDword(hKey, _T("lfPitchAndFamily"), Globals.lfFont.lfPitchAndFamily);
        SaveDword(hKey, _T("lfQuality"), Globals.lfFont.lfQuality);
        SaveDword(hKey, _T("lfStrikeOut"), Globals.lfFont.lfStrikeOut);
        SaveDword(hKey, _T("lfUnderline"), Globals.lfFont.lfUnderline);
        SaveDword(hKey, _T("lfWeight"), Globals.lfFont.lfWeight);
        SaveDword(hKey, _T("iPointSize"), PointSizeFromHeight(Globals.lfFont.lfHeight));
        SaveDword(hKey, _T("fWrap"), Globals.bWrapLongLines ? 1 : 0);
        SaveDword(hKey, _T("fStatusBar"), Globals.bShowStatusBar ? 1 : 0);
        SaveString(hKey, _T("szHeader"), Globals.szHeader);
        SaveString(hKey, _T("szTrailer"), Globals.szFooter);
        SaveDword(hKey, _T("iMarginLeft"), Globals.lMargins.left);
        SaveDword(hKey, _T("iMarginTop"), Globals.lMargins.top);
        SaveDword(hKey, _T("iMarginRight"), Globals.lMargins.right);
        SaveDword(hKey, _T("iMarginBottom"), Globals.lMargins.bottom);
        SaveDword(hKey, _T("iWindowPosX"), Globals.main_rect.left);
        SaveDword(hKey, _T("iWindowPosY"), Globals.main_rect.top);
        SaveDword(hKey, _T("iWindowPosDX"), Globals.main_rect.right - Globals.main_rect.left);
        SaveDword(hKey, _T("iWindowPosDY"), Globals.main_rect.bottom - Globals.main_rect.top);

        RegCloseKey(hKey);
    }
}
