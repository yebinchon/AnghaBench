#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_5__ {int lfCharSet; int lfClipPrecision; int lfItalic; int lfOutPrecision; int lfPitchAndFamily; int lfQuality; int lfStrikeOut; int lfUnderline; void* lfHeight; scalar_t__ lfWeight; scalar_t__ lfOrientation; int /*<<< orphan*/  lfFaceName; scalar_t__ lfEscapement; } ;
struct TYPE_6__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_7__ {int bWrapLongLines; int bShowStatusBar; scalar_t__ hFont; int /*<<< orphan*/  hEdit; TYPE_1__ lfFont; int /*<<< orphan*/  szFooter; int /*<<< orphan*/  hInstance; int /*<<< orphan*/  szHeader; TYPE_2__ lMargins; TYPE_2__ main_rect; } ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  double INT ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  scalar_t__ HFONT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int ANSI_CHARSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CLIP_STROKE_PRECIS ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ ERROR_SUCCESS ; 
 void* FALSE ; 
 int FF_MODERN ; 
 int FIXED_PITCH ; 
 scalar_t__ FW_NORMAL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__ Globals ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OUT_STRING_PRECIS ; 
 int PROOF_QUALITY ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  SM_CXSCREEN ; 
 int /*<<< orphan*/  SM_CYSCREEN ; 
 int /*<<< orphan*/  STRING_PAGESETUP_FOOTERVALUE ; 
 int /*<<< orphan*/  STRING_PAGESETUP_HEADERVALUE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int,int,int,int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  WM_SETFONT ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_szRegistryKey ; 

void FUNC17(void)
{
    HKEY hKey = NULL;
    HFONT hFont;
    DWORD dwPointSize = 0;
    INT base_length, dx, dy;

    base_length = (FUNC3(SM_CXSCREEN) > FUNC3(SM_CYSCREEN)) ?
                  FUNC3(SM_CYSCREEN) : FUNC3(SM_CXSCREEN);

    dx = (INT)(base_length * .95);
    dy = dx * 3 / 4;
    FUNC13(&Globals.main_rect, 0, 0, dx, dy);

    if (FUNC11(HKEY_CURRENT_USER, s_szRegistryKey, &hKey) == ERROR_SUCCESS)
    {
        FUNC7(hKey, FUNC15("lfCharSet"), &Globals.lfFont.lfCharSet);
        FUNC7(hKey, FUNC15("lfClipPrecision"), &Globals.lfFont.lfClipPrecision);
        FUNC8(hKey, FUNC15("lfEscapement"), (DWORD*)&Globals.lfFont.lfEscapement);
        FUNC9(hKey, FUNC15("lfFaceName"), Globals.lfFont.lfFaceName, FUNC0(Globals.lfFont.lfFaceName));
        FUNC7(hKey, FUNC15("lfItalic"), &Globals.lfFont.lfItalic);
        FUNC8(hKey, FUNC15("lfOrientation"), (DWORD*)&Globals.lfFont.lfOrientation);
        FUNC7(hKey, FUNC15("lfOutPrecision"), &Globals.lfFont.lfOutPrecision);
        FUNC7(hKey, FUNC15("lfPitchAndFamily"), &Globals.lfFont.lfPitchAndFamily);
        FUNC7(hKey, FUNC15("lfQuality"), &Globals.lfFont.lfQuality);
        FUNC7(hKey, FUNC15("lfStrikeOut"), &Globals.lfFont.lfStrikeOut);
        FUNC7(hKey, FUNC15("lfUnderline"), &Globals.lfFont.lfUnderline);
        FUNC8(hKey, FUNC15("lfWeight"), (DWORD*)&Globals.lfFont.lfWeight);
        FUNC8(hKey, FUNC15("iPointSize"), &dwPointSize);
        FUNC6(hKey, FUNC15("fWrap"), &Globals.bWrapLongLines);
        FUNC6(hKey, FUNC15("fStatusBar"), &Globals.bShowStatusBar);
        FUNC9(hKey, FUNC15("szHeader"), Globals.szHeader, FUNC0(Globals.szHeader));
        FUNC9(hKey, FUNC15("szTrailer"), Globals.szFooter, FUNC0(Globals.szFooter));
        FUNC8(hKey, FUNC15("iMarginLeft"), (DWORD*)&Globals.lMargins.left);
        FUNC8(hKey, FUNC15("iMarginTop"), (DWORD*)&Globals.lMargins.top);
        FUNC8(hKey, FUNC15("iMarginRight"), (DWORD*)&Globals.lMargins.right);
        FUNC8(hKey, FUNC15("iMarginBottom"), (DWORD*)&Globals.lMargins.bottom);

        FUNC8(hKey, FUNC15("iWindowPosX"), (DWORD*)&Globals.main_rect.left);
        FUNC8(hKey, FUNC15("iWindowPosY"), (DWORD*)&Globals.main_rect.top);
        FUNC8(hKey, FUNC15("iWindowPosDX"), (DWORD*)&dx);
        FUNC8(hKey, FUNC15("iWindowPosDY"), (DWORD*)&dy);

        Globals.main_rect.right = Globals.main_rect.left + dx;
        Globals.main_rect.bottom = Globals.main_rect.top + dy;

        /* invert value because DIALOG_ViewStatusBar will be called to show it */
        Globals.bShowStatusBar = !Globals.bShowStatusBar;

        if (dwPointSize != 0)
            Globals.lfFont.lfHeight = FUNC4(dwPointSize);
        else
            Globals.lfFont.lfHeight = FUNC4(100);

        FUNC10(hKey);
    }
    else
    {
        /* If no settings are found in the registry, then use default values */
        Globals.bShowStatusBar = FALSE;
        Globals.bWrapLongLines = FALSE;
        FUNC13(&Globals.lMargins, 750, 1000, 750, 1000);

        /* FIXME: Globals.fSaveWindowPositions = FALSE; */
        /* FIXME: Globals.fMLE_is_broken = FALSE; */

        FUNC5(Globals.hInstance, STRING_PAGESETUP_HEADERVALUE, Globals.szHeader,
                   FUNC0(Globals.szHeader));
        FUNC5(Globals.hInstance, STRING_PAGESETUP_FOOTERVALUE, Globals.szFooter,
                   FUNC0(Globals.szFooter));

        FUNC14(&Globals.lfFont, sizeof(Globals.lfFont));
        Globals.lfFont.lfCharSet = ANSI_CHARSET;
        Globals.lfFont.lfClipPrecision = CLIP_STROKE_PRECIS;
        Globals.lfFont.lfEscapement = 0;
        FUNC16(Globals.lfFont.lfFaceName, FUNC15("Lucida Console"));
        Globals.lfFont.lfItalic = FALSE;
        Globals.lfFont.lfOrientation = 0;
        Globals.lfFont.lfOutPrecision = OUT_STRING_PRECIS;
        Globals.lfFont.lfPitchAndFamily = FIXED_PITCH | FF_MODERN;
        Globals.lfFont.lfQuality = PROOF_QUALITY;
        Globals.lfFont.lfStrikeOut = FALSE;
        Globals.lfFont.lfUnderline = FALSE;
        Globals.lfFont.lfWeight = FW_NORMAL;
        Globals.lfFont.lfHeight = FUNC4(100);
    }

    hFont = FUNC1(&Globals.lfFont);
    FUNC12(Globals.hEdit, WM_SETFONT, (WPARAM)hFont, (LPARAM)TRUE);
    if (hFont)
    {
        if (Globals.hFont)
            FUNC2(Globals.hFont);
        Globals.hFont = hFont;
    }
}