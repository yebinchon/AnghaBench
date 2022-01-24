#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_9__ {int cy; int cx; } ;
struct TYPE_8__ {int lfHeight; int lfWeight; int /*<<< orphan*/  lfFaceName; int /*<<< orphan*/  lfCharSet; } ;
struct TYPE_7__ {int top; int left; int right; scalar_t__ bottom; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  TYPE_2__ LOGFONTW ;
typedef  int /*<<< orphan*/  INT ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  DEFAULT_CHARSET ; 
 int DT_NOPREFIX ; 
 int DT_RIGHT ; 
 int DT_WORDBREAK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LF_FACESIZE ; 
 int /*<<< orphan*/  LOGPIXELSY ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRANSPARENT ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 TYPE_3__* g_pInfo ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static VOID
FUNC10(LPWSTR lpText,
                          HDC hdcMem)
{
    HFONT hFont;
    LOGFONTW LogFont;
    RECT TextRect;
    INT PrevBkMode;

    /* Setup the font we'll use */
    FUNC8(&LogFont, sizeof(LOGFONTW));
    LogFont.lfCharSet = DEFAULT_CHARSET;
    LogFont.lfHeight = 22;
    LogFont.lfWeight = 109; // From WinXP disassembly
    FUNC9(LogFont.lfFaceName, LF_FACESIZE, L"Arial");

    /* Create it */
    hFont = FUNC0(&LogFont);
    if (hFont)
    {
        /* Set the font and font colour */
        FUNC5(hdcMem, hFont);
        FUNC7(hdcMem, FUNC4(255, 255, 255));

        /* Create the text rect */
        TextRect.top = (g_pInfo->cy / 2) + 34;
        TextRect.bottom = (g_pInfo->cy / 2) + 34 + (FUNC3(hdcMem, LOGPIXELSY));
        TextRect.left = g_pInfo->cx / 3;
        TextRect.right = (g_pInfo->cx / 2) + 35 + 137;

        /* Set the background mode to transparent */
        PrevBkMode = FUNC6(hdcMem, TRANSPARENT);

        /* Draw the text to the mem DC */
        FUNC2(hdcMem,
                  lpText,
                  -1,
                  &TextRect,
                  DT_NOPREFIX | DT_WORDBREAK | DT_RIGHT); // WinXP disassembly uses 0x812

        /* Set the previous background mode */
        FUNC6(hdcMem, PrevBkMode);

        /* Delete the font */
        FUNC1(hFont);
    }
}