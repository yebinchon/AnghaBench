#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_6__ {int /*<<< orphan*/ * crColor; } ;
struct TYPE_8__ {scalar_t__* hbmpColor; TYPE_1__ SchemeAdv; } ;
struct TYPE_7__ {int left; int top; int right; int bottom; } ;
typedef  TYPE_2__ RECT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HGDIOBJ ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  TYPE_3__ GLOBALS ;

/* Variables and functions */
 int /*<<< orphan*/  BM_SETIMAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ IMAGE_BITMAP ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static VOID
FUNC11(HWND hwndDlg, GLOBALS* g, INT ID, INT nButton, INT nColor)
{
    HDC hdcColorButton, hdcCompat;
    RECT rect;
    HBRUSH hbrush;
    HWND hwndColorButton;
    HGDIOBJ hgdiTmp;

    if (nColor != -1)
    {
        /* Create a DC to draw on */
        hwndColorButton = FUNC7(hwndDlg, ID);
        hdcColorButton = FUNC6(hwndColorButton);
        hdcCompat = FUNC0(hdcColorButton);
        FUNC8(hwndColorButton, hdcColorButton);

        /* Select the button image to it */
        hgdiTmp = FUNC9(hdcCompat, g->hbmpColor[nButton]);

        /* Create a brush and draw the rectangle */
        rect.left = 2;
        rect.top = 2;
        rect.right = 22;
        rect.bottom = 13;
        hbrush = FUNC1(g->SchemeAdv.crColor[nColor]);
        FUNC5(hdcCompat, &rect, hbrush);
        FUNC3(hbrush);

        /* hdcCompat is not needed anymore */
        FUNC9(hdcCompat,hgdiTmp);
        FUNC2(hdcCompat);

        FUNC10(hwndDlg, ID, BM_SETIMAGE, (WPARAM)IMAGE_BITMAP, (LPARAM)g->hbmpColor[nButton]);
        FUNC4(FUNC7(hwndDlg, ID), TRUE);
    }
    else
    {
        FUNC10(hwndDlg, ID, BM_SETIMAGE, (WPARAM)IMAGE_BITMAP, (LPARAM)NULL);
        FUNC4(FUNC7(hwndDlg, ID), FALSE);
    }
}