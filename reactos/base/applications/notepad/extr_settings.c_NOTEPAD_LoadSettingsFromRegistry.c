
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_5__ {int lfCharSet; int lfClipPrecision; int lfItalic; int lfOutPrecision; int lfPitchAndFamily; int lfQuality; int lfStrikeOut; int lfUnderline; void* lfHeight; scalar_t__ lfWeight; scalar_t__ lfOrientation; int lfFaceName; scalar_t__ lfEscapement; } ;
struct TYPE_6__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_7__ {int bWrapLongLines; int bShowStatusBar; scalar_t__ hFont; int hEdit; TYPE_1__ lfFont; int szFooter; int hInstance; int szHeader; TYPE_2__ lMargins; TYPE_2__ main_rect; } ;
typedef int LPARAM ;
typedef double INT ;
typedef int * HKEY ;
typedef scalar_t__ HFONT ;
typedef scalar_t__ DWORD ;


 int ANSI_CHARSET ;
 int ARRAY_SIZE (int ) ;
 int CLIP_STROKE_PRECIS ;
 scalar_t__ CreateFontIndirect (TYPE_1__*) ;
 int DeleteObject (scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 void* FALSE ;
 int FF_MODERN ;
 int FIXED_PITCH ;
 scalar_t__ FW_NORMAL ;
 scalar_t__ GetSystemMetrics (int ) ;
 TYPE_3__ Globals ;
 int HKEY_CURRENT_USER ;
 void* HeightFromPointSize (int) ;
 int LoadString (int ,int ,int ,int ) ;
 int OUT_STRING_PRECIS ;
 int PROOF_QUALITY ;
 int QueryBool (int *,int ,int*) ;
 int QueryByte (int *,int ,int*) ;
 int QueryDword (int *,int ,scalar_t__*) ;
 int QueryString (int *,int ,int ,int ) ;
 int RegCloseKey (int *) ;
 scalar_t__ RegOpenKey (int ,int ,int **) ;
 int SM_CXSCREEN ;
 int SM_CYSCREEN ;
 int STRING_PAGESETUP_FOOTERVALUE ;
 int STRING_PAGESETUP_HEADERVALUE ;
 int SendMessage (int ,int ,int ,int ) ;
 int SetRect (TYPE_2__*,int,int,int,int) ;
 scalar_t__ TRUE ;
 int WM_SETFONT ;
 int ZeroMemory (TYPE_1__*,int) ;
 int _T (char*) ;
 int _tcscpy (int ,int ) ;
 int s_szRegistryKey ;

void NOTEPAD_LoadSettingsFromRegistry(void)
{
    HKEY hKey = ((void*)0);
    HFONT hFont;
    DWORD dwPointSize = 0;
    INT base_length, dx, dy;

    base_length = (GetSystemMetrics(SM_CXSCREEN) > GetSystemMetrics(SM_CYSCREEN)) ?
                  GetSystemMetrics(SM_CYSCREEN) : GetSystemMetrics(SM_CXSCREEN);

    dx = (INT)(base_length * .95);
    dy = dx * 3 / 4;
    SetRect(&Globals.main_rect, 0, 0, dx, dy);

    if (RegOpenKey(HKEY_CURRENT_USER, s_szRegistryKey, &hKey) == ERROR_SUCCESS)
    {
        QueryByte(hKey, _T("lfCharSet"), &Globals.lfFont.lfCharSet);
        QueryByte(hKey, _T("lfClipPrecision"), &Globals.lfFont.lfClipPrecision);
        QueryDword(hKey, _T("lfEscapement"), (DWORD*)&Globals.lfFont.lfEscapement);
        QueryString(hKey, _T("lfFaceName"), Globals.lfFont.lfFaceName, ARRAY_SIZE(Globals.lfFont.lfFaceName));
        QueryByte(hKey, _T("lfItalic"), &Globals.lfFont.lfItalic);
        QueryDword(hKey, _T("lfOrientation"), (DWORD*)&Globals.lfFont.lfOrientation);
        QueryByte(hKey, _T("lfOutPrecision"), &Globals.lfFont.lfOutPrecision);
        QueryByte(hKey, _T("lfPitchAndFamily"), &Globals.lfFont.lfPitchAndFamily);
        QueryByte(hKey, _T("lfQuality"), &Globals.lfFont.lfQuality);
        QueryByte(hKey, _T("lfStrikeOut"), &Globals.lfFont.lfStrikeOut);
        QueryByte(hKey, _T("lfUnderline"), &Globals.lfFont.lfUnderline);
        QueryDword(hKey, _T("lfWeight"), (DWORD*)&Globals.lfFont.lfWeight);
        QueryDword(hKey, _T("iPointSize"), &dwPointSize);
        QueryBool(hKey, _T("fWrap"), &Globals.bWrapLongLines);
        QueryBool(hKey, _T("fStatusBar"), &Globals.bShowStatusBar);
        QueryString(hKey, _T("szHeader"), Globals.szHeader, ARRAY_SIZE(Globals.szHeader));
        QueryString(hKey, _T("szTrailer"), Globals.szFooter, ARRAY_SIZE(Globals.szFooter));
        QueryDword(hKey, _T("iMarginLeft"), (DWORD*)&Globals.lMargins.left);
        QueryDword(hKey, _T("iMarginTop"), (DWORD*)&Globals.lMargins.top);
        QueryDword(hKey, _T("iMarginRight"), (DWORD*)&Globals.lMargins.right);
        QueryDword(hKey, _T("iMarginBottom"), (DWORD*)&Globals.lMargins.bottom);

        QueryDword(hKey, _T("iWindowPosX"), (DWORD*)&Globals.main_rect.left);
        QueryDword(hKey, _T("iWindowPosY"), (DWORD*)&Globals.main_rect.top);
        QueryDword(hKey, _T("iWindowPosDX"), (DWORD*)&dx);
        QueryDword(hKey, _T("iWindowPosDY"), (DWORD*)&dy);

        Globals.main_rect.right = Globals.main_rect.left + dx;
        Globals.main_rect.bottom = Globals.main_rect.top + dy;


        Globals.bShowStatusBar = !Globals.bShowStatusBar;

        if (dwPointSize != 0)
            Globals.lfFont.lfHeight = HeightFromPointSize(dwPointSize);
        else
            Globals.lfFont.lfHeight = HeightFromPointSize(100);

        RegCloseKey(hKey);
    }
    else
    {

        Globals.bShowStatusBar = FALSE;
        Globals.bWrapLongLines = FALSE;
        SetRect(&Globals.lMargins, 750, 1000, 750, 1000);




        LoadString(Globals.hInstance, STRING_PAGESETUP_HEADERVALUE, Globals.szHeader,
                   ARRAY_SIZE(Globals.szHeader));
        LoadString(Globals.hInstance, STRING_PAGESETUP_FOOTERVALUE, Globals.szFooter,
                   ARRAY_SIZE(Globals.szFooter));

        ZeroMemory(&Globals.lfFont, sizeof(Globals.lfFont));
        Globals.lfFont.lfCharSet = ANSI_CHARSET;
        Globals.lfFont.lfClipPrecision = CLIP_STROKE_PRECIS;
        Globals.lfFont.lfEscapement = 0;
        _tcscpy(Globals.lfFont.lfFaceName, _T("Lucida Console"));
        Globals.lfFont.lfItalic = FALSE;
        Globals.lfFont.lfOrientation = 0;
        Globals.lfFont.lfOutPrecision = OUT_STRING_PRECIS;
        Globals.lfFont.lfPitchAndFamily = FIXED_PITCH | FF_MODERN;
        Globals.lfFont.lfQuality = PROOF_QUALITY;
        Globals.lfFont.lfStrikeOut = FALSE;
        Globals.lfFont.lfUnderline = FALSE;
        Globals.lfFont.lfWeight = FW_NORMAL;
        Globals.lfFont.lfHeight = HeightFromPointSize(100);
    }

    hFont = CreateFontIndirect(&Globals.lfFont);
    SendMessage(Globals.hEdit, WM_SETFONT, (WPARAM)hFont, (LPARAM)TRUE);
    if (hFont)
    {
        if (Globals.hFont)
            DeleteObject(Globals.hFont);
        Globals.hFont = hFont;
    }
}
