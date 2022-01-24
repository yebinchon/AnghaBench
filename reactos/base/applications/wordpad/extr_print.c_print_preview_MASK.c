#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct TYPE_13__ {int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; } ;
struct TYPE_12__ {int cx; scalar_t__ cy; } ;
struct TYPE_11__ {int cx; int cy; } ;
struct TYPE_15__ {int pages_shown; TYPE_4__ window; int /*<<< orphan*/  zoomratio; TYPE_3__ bmSize; int /*<<< orphan*/  hdc2; TYPE_2__ bmScaledSize; TYPE_1__ spacing; int /*<<< orphan*/  page; int /*<<< orphan*/  hdc; } ;
typedef  TYPE_4__ RECT ;
typedef  int /*<<< orphan*/  PAINTSTRUCT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HRGN ;
typedef  int /*<<< orphan*/  HPEN ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GRAY_BRUSH ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int,int) ; 
 int PS_INSIDEFRAME ; 
 int PS_SOLID ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RGN_DIFF ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SB_HORZ ; 
 int /*<<< orphan*/  SB_VERT ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WHITE_BRUSH ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 TYPE_5__ preview ; 

__attribute__((used)) static LRESULT FUNC20(HWND hwndPreview)
{
    HPEN hPen, oldPen;
    HDC hdc;
    HRGN back_rgn, excl_rgn;
    RECT window, background;
    PAINTSTRUCT ps;
    int x, y;

    hdc = FUNC0(hwndPreview, &ps);
    FUNC8(hwndPreview, &window);
    back_rgn = FUNC3(&window);

    x = preview.spacing.cx - FUNC9(hwndPreview, SB_HORZ);
    y = preview.spacing.cy - FUNC9(hwndPreview, SB_VERT);

    /* draw page outlines */
    hPen = FUNC2(PS_SOLID|PS_INSIDEFRAME, 2, FUNC12(0,0,0));
    oldPen = FUNC14(hdc, hPen);
    FUNC15(&background, x - 2, y - 2, x + preview.bmScaledSize.cx + 2,
            y + preview.bmScaledSize.cy + 2);
    FUNC13(hdc, background.left, background.top,
              background.right, background.bottom);
    excl_rgn = FUNC3(&background);
    FUNC1(back_rgn, back_rgn, excl_rgn, RGN_DIFF);
    if(preview.pages_shown > 1)
    {
        background.left += preview.bmScaledSize.cx + preview.spacing.cx;
        background.right += preview.bmScaledSize.cx + preview.spacing.cx;
        FUNC13(hdc, background.left, background.top,
                  background.right, background.bottom);
        FUNC16(excl_rgn, background.left, background.top,
                   background.right, background.bottom);
        FUNC1(back_rgn, back_rgn, excl_rgn, RGN_DIFF);
    }
    FUNC14(hdc, oldPen);
    FUNC4(hPen);
    FUNC7(hdc, back_rgn, FUNC10(GRAY_BRUSH));
    FUNC4(excl_rgn);
    FUNC4(back_rgn);

    FUNC17(hdc, x, y, preview.bmScaledSize.cx, preview.bmScaledSize.cy,
               preview.hdc, 0, 0, preview.bmSize.cx, preview.bmSize.cy, SRCCOPY);

    FUNC18(hdc, x, y, preview.zoomratio);

    if(preview.pages_shown > 1)
    {
        if (!FUNC19(preview.page)) {
            x += preview.spacing.cx + preview.bmScaledSize.cx;
            FUNC17(hdc, x, y,
                       preview.bmScaledSize.cx, preview.bmScaledSize.cy,
                       preview.hdc2, 0, 0,
                       preview.bmSize.cx, preview.bmSize.cy, SRCCOPY);

            FUNC18(hdc, x, y, preview.zoomratio);
        } else {
            FUNC11(&background, -2, -2);
            FUNC6(hdc, &background, FUNC10(WHITE_BRUSH));
        }
    }

    preview.window = window;

    FUNC5(hwndPreview, &ps);

    return 0;
}