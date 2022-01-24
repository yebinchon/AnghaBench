#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ps ;
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_10__ {int uDisplayFormat; int /*<<< orphan*/  hInstance; int /*<<< orphan*/  hMainWnd; } ;
struct TYPE_9__ {int /*<<< orphan*/  hdc; int /*<<< orphan*/  rcPaint; scalar_t__ fErase; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  PPAINTSTRUCT ;
typedef  TYPE_1__ PAINTSTRUCT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  CF_BITMAP 141 
#define  CF_DIB 140 
#define  CF_DIBV5 139 
#define  CF_DSPBITMAP 138 
#define  CF_DSPENHMETAFILE 137 
#define  CF_DSPMETAFILEPICT 136 
#define  CF_DSPTEXT 135 
#define  CF_ENHMETAFILE 134 
#define  CF_METAFILEPICT 133 
#define  CF_NONE 132 
#define  CF_OEMTEXT 131 
#define  CF_OWNERDISPLAY 130 
#define  CF_TEXT 129 
#define  CF_UNICODETEXT 128 
 scalar_t__ COLOR_WINDOW ; 
 scalar_t__ COLOR_WINDOWTEXT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int DT_CENTER ; 
 int DT_NOPREFIX ; 
 int DT_WORDBREAK ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ERROR_UNSUPPORTED_FORMAT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_3__ Globals ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/  Scrollstate ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_PAINTCLIPBOARD ; 

__attribute__((used)) static void FUNC22(HWND hWnd, WPARAM wParam, LPARAM lParam)
{
    HDC hdc;
    PAINTSTRUCT ps;
    COLORREF crOldBkColor, crOldTextColor;
    RECT rc;

    if (!FUNC14(Globals.hMainWnd))
        return;

    hdc = FUNC0(hWnd, &ps);

    /* Erase the background if needed */
    if (ps.fErase)
        FUNC7(ps.hdc, &ps.rcPaint, (HBRUSH)(COLOR_WINDOW + 1));

    /* Set the correct background and text colors */
    crOldBkColor   = FUNC19(ps.hdc, FUNC9(COLOR_WINDOW));
    crOldTextColor = FUNC21(ps.hdc, FUNC9(COLOR_WINDOWTEXT));

    /* Realize the clipboard palette if there is one */
    FUNC17(ps.hdc);

    switch (Globals.uDisplayFormat)
    {
        case CF_NONE:
        {
            /* The clipboard is empty */
            break;
        }

        case CF_DSPTEXT:
        case CF_TEXT:
        case CF_OEMTEXT:
        case CF_UNICODETEXT:
        {
            FUNC4(Globals.uDisplayFormat, ps, Scrollstate);
            break;
        }

        case CF_DSPBITMAP:
        case CF_BITMAP:
        {
            FUNC1(ps, Scrollstate, SRCCOPY);
            break;
        }

        case CF_DIB:
        case CF_DIBV5:
        {
            FUNC20(Globals.uDisplayFormat, ps, Scrollstate, DIB_RGB_COLORS);
            break;
        }

        case CF_DSPMETAFILEPICT:
        case CF_METAFILEPICT:
        {
            FUNC8(hWnd, &rc);
            FUNC16(hdc, &rc);
            break;
        }

        case CF_DSPENHMETAFILE:
        case CF_ENHMETAFILE:
        {
            FUNC8(hWnd, &rc);
            FUNC15(hdc, &rc);
            break;
        }

        // case CF_PALETTE:
            // TODO: Draw a palette with squares filled with colors.
            // break;

        case CF_OWNERDISPLAY:
        {
            HGLOBAL hglb;
            PPAINTSTRUCT pps;

            hglb = FUNC10(GMEM_MOVEABLE, sizeof(ps));
            if (hglb)
            {
                pps = FUNC12(hglb);
                FUNC3(pps, &ps, sizeof(ps));
                FUNC13(hglb);

                FUNC18(TRUE, WM_PAINTCLIPBOARD,
                                          (WPARAM)hWnd, (LPARAM)hglb);

                FUNC11(hglb);
            }
            break;
        }

        default:
        {
            FUNC8(hWnd, &rc);
            FUNC5(Globals.hInstance, ERROR_UNSUPPORTED_FORMAT,
                                 hdc, &rc, DT_CENTER | DT_WORDBREAK | DT_NOPREFIX);
            break;
        }
    }

    /* Restore the original colors */
    FUNC21(ps.hdc, crOldTextColor);
    FUNC19(ps.hdc, crOldBkColor);

    FUNC6(hWnd, &ps);

    FUNC2();
}