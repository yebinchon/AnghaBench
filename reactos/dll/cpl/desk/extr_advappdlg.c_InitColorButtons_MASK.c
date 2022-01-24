#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_11__ {int /*<<< orphan*/ * crColor; } ;
struct TYPE_10__ {scalar_t__* hbmpColor; TYPE_4__ SchemeAdv; } ;
struct TYPE_9__ {int member_0; int member_1; } ;
struct TYPE_8__ {int left; int top; int right; int bottom; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ POINT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HPEN ;
typedef  scalar_t__ HGDIOBJ ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ HBRUSH ;
typedef  TYPE_3__ GLOBALS ;
typedef  TYPE_4__ COLOR_SCHEME ;

/* Variables and functions */
 int /*<<< orphan*/  BLACK_PEN ; 
 int /*<<< orphan*/  BM_SETIMAGE ; 
 size_t COLOR_BTNFACE ; 
 size_t COLOR_BTNHIGHLIGHT ; 
 size_t COLOR_BTNSHADOW ; 
 size_t COLOR_BTNTEXT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_ADVAPPEARANCE_COLOR1_B ; 
 int /*<<< orphan*/  IDC_ADVAPPEARANCE_COLOR2_B ; 
 int /*<<< orphan*/  IDC_ADVAPPEARANCE_FONTCOLOR_B ; 
 scalar_t__ IMAGE_BITMAP ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PS_SOLID ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_2__ const*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WINDING ; 

__attribute__((used)) static VOID
FUNC17(HWND hwndDlg, GLOBALS* g)
{
    INT i;
    HDC hdcColorButton, hdcCompat;
    RECT rect;
    HBRUSH hbrush;
    HPEN hPen;
    HWND hwndColorButton;
    HGDIOBJ hgdiTemp;
    COLOR_SCHEME *scheme = &g->SchemeAdv;

    const POINT Points[3] = {{29,6},{33,6},{31,8}};

    hwndColorButton = FUNC8(hwndDlg, IDC_ADVAPPEARANCE_COLOR1_B);
    hdcColorButton = FUNC7(hwndColorButton);
    for (i = 0; i <= 2; i++)
    {
        /* Create a DC to draw on */
        hdcCompat = FUNC1(hdcColorButton);

        /* Create the button image */
        g->hbmpColor[i] = FUNC0(hdcColorButton, 36, 15);

        /* Select the button image to the DC */
        hgdiTemp = FUNC14(hdcCompat, g->hbmpColor[i]);

        /* Draw the buttons background color */
        rect.left = 0;
        rect.top = 0;
        rect.right = 36;
        rect.bottom = 15;
        hbrush = FUNC3(scheme->crColor[COLOR_BTNFACE]);
        FUNC6(hdcCompat, &rect, hbrush);
        FUNC5(hbrush);

        /* Draw the rectangle */
        rect.left = 1;
        rect.top = 1;
        rect.right = 23;
        rect.bottom = 14;
        hbrush = FUNC3(scheme->crColor[COLOR_BTNTEXT]);
        FUNC6(hdcCompat, &rect, hbrush);
        FUNC5(hbrush);

        /* Draw left side of line */
        hPen = FUNC2(PS_SOLID, 1, scheme->crColor[COLOR_BTNSHADOW]);
        FUNC14(hdcCompat, hPen);
        FUNC11(hdcCompat, 26, 1, NULL);
        FUNC10(hdcCompat, 26, 14);
        FUNC14(hdcCompat, FUNC9(BLACK_PEN));
        FUNC5(hPen);

        /* Draw right side of line */
        hPen = FUNC2(PS_SOLID, 1, scheme->crColor[COLOR_BTNHIGHLIGHT]);
        FUNC14(hdcCompat,hPen);
        FUNC11(hdcCompat, 27, 1, NULL);
        FUNC10(hdcCompat, 27, 14);
        FUNC14(hdcCompat, FUNC9(BLACK_PEN));
        FUNC5(hPen);

        /* Draw triangle */
        hPen = FUNC2(PS_SOLID, 1, scheme->crColor[COLOR_BTNTEXT]);
        hbrush = FUNC3(scheme->crColor[COLOR_BTNTEXT]);
        FUNC14(hdcCompat, hPen);
        FUNC14(hdcCompat, hbrush);
        FUNC16(hdcCompat, WINDING);

        /* FIXME: HACK, see Points definition */
        FUNC12(hdcCompat, Points, 3);

        /* Cleanup */
        FUNC14(hdcCompat,hgdiTemp);
        FUNC4(hdcCompat);
        FUNC5(hPen);
        FUNC5(hbrush);
    }

    FUNC13(hwndColorButton, hdcColorButton);

    /* Set the images of the buttons */
    FUNC15(hwndDlg, IDC_ADVAPPEARANCE_COLOR1_B, BM_SETIMAGE, (WPARAM)IMAGE_BITMAP, (LPARAM)g->hbmpColor[0]);
    FUNC15(hwndDlg, IDC_ADVAPPEARANCE_COLOR2_B, BM_SETIMAGE, (WPARAM)IMAGE_BITMAP, (LPARAM)g->hbmpColor[1]);
    FUNC15(hwndDlg, IDC_ADVAPPEARANCE_FONTCOLOR_B, BM_SETIMAGE, (WPARAM)IMAGE_BITMAP, (LPARAM)g->hbmpColor[2]);
}