#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int left; int top; int right; int bottom; } ;
struct TYPE_6__ {int left; int top; int right; int bottom; } ;
struct TYPE_5__ {int lfCharSet; int lfClipPrecision; int lfEscapement; int lfItalic; int lfOrientation; int lfOutPrecision; int lfPitchAndFamily; int lfQuality; int lfStrikeOut; int lfUnderline; int lfWeight; int /*<<< orphan*/  lfHeight; int /*<<< orphan*/  lfFaceName; } ;
struct TYPE_7__ {TYPE_4__ main_rect; TYPE_2__ lMargins; int /*<<< orphan*/  szFooter; int /*<<< orphan*/  szHeader; scalar_t__ bShowStatusBar; scalar_t__ bWrapLongLines; TYPE_1__ lfFont; int /*<<< orphan*/  hMainWnd; } ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_3__ Globals ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_SET_VALUE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  s_szRegistryKey ; 

void FUNC7(void)
{
    HKEY hKey;
    DWORD dwDisposition;

    FUNC0(Globals.hMainWnd, &Globals.main_rect);

    if (FUNC3(HKEY_CURRENT_USER, s_szRegistryKey,
                       0, NULL, 0, KEY_SET_VALUE, NULL,
                       &hKey, &dwDisposition) == ERROR_SUCCESS)
    {
        FUNC4(hKey, FUNC6("lfCharSet"), Globals.lfFont.lfCharSet);
        FUNC4(hKey, FUNC6("lfClipPrecision"), Globals.lfFont.lfClipPrecision);
        FUNC4(hKey, FUNC6("lfEscapement"), Globals.lfFont.lfEscapement);
        FUNC5(hKey, FUNC6("lfFaceName"), Globals.lfFont.lfFaceName);
        FUNC4(hKey, FUNC6("lfItalic"), Globals.lfFont.lfItalic);
        FUNC4(hKey, FUNC6("lfOrientation"), Globals.lfFont.lfOrientation);
        FUNC4(hKey, FUNC6("lfOutPrecision"), Globals.lfFont.lfOutPrecision);
        FUNC4(hKey, FUNC6("lfPitchAndFamily"), Globals.lfFont.lfPitchAndFamily);
        FUNC4(hKey, FUNC6("lfQuality"), Globals.lfFont.lfQuality);
        FUNC4(hKey, FUNC6("lfStrikeOut"), Globals.lfFont.lfStrikeOut);
        FUNC4(hKey, FUNC6("lfUnderline"), Globals.lfFont.lfUnderline);
        FUNC4(hKey, FUNC6("lfWeight"), Globals.lfFont.lfWeight);
        FUNC4(hKey, FUNC6("iPointSize"), FUNC1(Globals.lfFont.lfHeight));
        FUNC4(hKey, FUNC6("fWrap"), Globals.bWrapLongLines ? 1 : 0);
        FUNC4(hKey, FUNC6("fStatusBar"), Globals.bShowStatusBar ? 1 : 0);
        FUNC5(hKey, FUNC6("szHeader"), Globals.szHeader);
        FUNC5(hKey, FUNC6("szTrailer"), Globals.szFooter);
        FUNC4(hKey, FUNC6("iMarginLeft"), Globals.lMargins.left);
        FUNC4(hKey, FUNC6("iMarginTop"), Globals.lMargins.top);
        FUNC4(hKey, FUNC6("iMarginRight"), Globals.lMargins.right);
        FUNC4(hKey, FUNC6("iMarginBottom"), Globals.lMargins.bottom);
        FUNC4(hKey, FUNC6("iWindowPosX"), Globals.main_rect.left);
        FUNC4(hKey, FUNC6("iWindowPosY"), Globals.main_rect.top);
        FUNC4(hKey, FUNC6("iWindowPosDX"), Globals.main_rect.right - Globals.main_rect.left);
        FUNC4(hKey, FUNC6("iWindowPosDY"), Globals.main_rect.bottom - Globals.main_rect.top);

        FUNC2(hKey);
    }
}