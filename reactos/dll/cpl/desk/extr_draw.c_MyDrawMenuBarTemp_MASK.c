#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
struct TYPE_12__ {int /*<<< orphan*/ * crColor; scalar_t__ bFlatMenus; } ;
struct TYPE_11__ {int left; int right; scalar_t__ bottom; int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_1__* LPRECT ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HPEN ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  int /*<<< orphan*/  HGDIOBJ ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_3__ COLOR_SCHEME ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BDR_SUNKENOUTER ; 
 int /*<<< orphan*/  BF_RECT ; 
 size_t COLOR_3DFACE ; 
 size_t COLOR_BTNHIGHLIGHT ; 
 size_t COLOR_BTNSHADOW ; 
 size_t COLOR_GRAYTEXT ; 
 size_t COLOR_HIGHLIGHT ; 
 size_t COLOR_HIGHLIGHTTEXT ; 
 size_t COLOR_MENU ; 
 size_t COLOR_MENUBAR ; 
 size_t COLOR_MENUHILIGHT ; 
 size_t COLOR_MENUTEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int DT_CALCRECT ; 
 int DT_CENTER ; 
 int DT_SINGLELINE ; 
 int DT_VCENTER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int MENU_BAR_ITEMS_SPACE ; 
 int /*<<< orphan*/  MF_BYPOSITION ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PS_SOLID ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRANSPARENT ; 
 int /*<<< orphan*/  TRUE ; 

DWORD
FUNC15(HWND Wnd, HDC DC, LPRECT Rect, HMENU Menu, HFONT Font, COLOR_SCHEME *scheme)
{
    HBRUSH hbr;
    HPEN hPen;
    HGDIOBJ hPenOld, hFontOld;
    BOOL flat_menu;
    INT i, bkgnd, x;
    RECT rect;
    WCHAR Text[128];
    UINT uFormat = DT_CENTER | DT_VCENTER | DT_SINGLELINE;

    flat_menu = scheme->bFlatMenus;

    if (flat_menu)
        hbr = FUNC1(scheme->crColor[COLOR_MENUBAR]);
    else
        hbr = FUNC1(scheme->crColor[COLOR_MENU]);
    FUNC5(DC, Rect, hbr);
    FUNC2(hbr);

    hPen = FUNC0(PS_SOLID, 0, scheme->crColor[COLOR_3DFACE]);
    hPenOld = FUNC11(DC, hPen);
    FUNC10(DC, Rect->left, Rect->bottom - 1, NULL);
    FUNC9(DC, Rect->right, Rect->bottom - 1);
    FUNC11(DC, hPenOld);
    FUNC2(hPen);

    bkgnd = (flat_menu ? COLOR_MENUBAR : COLOR_MENU);
    x = Rect->left;
    hFontOld = FUNC11(DC, Font);
    for (i = 0; i < 3; i++)
    {
        FUNC7(Menu, i, Text, 128, MF_BYPOSITION);

        rect.left = rect.right = x;
        rect.top = Rect->top;
        rect.bottom = Rect->bottom;
        FUNC4(DC, Text, -1, &rect, DT_SINGLELINE | DT_CALCRECT);
        rect.bottom = Rect->bottom;
        rect.right += MENU_BAR_ITEMS_SPACE;
        x += rect.right - rect.left;

        if (i == 2)
        {
            if (flat_menu)
            {
                FUNC14(DC, scheme->crColor[COLOR_HIGHLIGHTTEXT]);
                FUNC12(DC, scheme->crColor[COLOR_HIGHLIGHT]);

                FUNC8 (&rect, -1, -1);
                hbr = FUNC1(scheme->crColor[COLOR_MENUHILIGHT]);
                FUNC5(DC, &rect, hbr);
                FUNC2(hbr);

                FUNC8 (&rect, 1, 1);
                hbr = FUNC1(scheme->crColor[COLOR_HIGHLIGHT]);
                FUNC6(DC, &rect, hbr);
                FUNC2(hbr);
            }
            else
            {
                FUNC14(DC, scheme->crColor[COLOR_MENUTEXT]);
                FUNC12(DC, scheme->crColor[COLOR_MENU]);
                FUNC3(DC, &rect, BDR_SUNKENOUTER, BF_RECT);
            }
        }
        else
        {
            if (i == 1)
                FUNC14(DC, scheme->crColor[COLOR_GRAYTEXT]);
            else
                FUNC14(DC, scheme->crColor[COLOR_MENUTEXT]);

            FUNC12(DC, scheme->crColor[bkgnd]);
            hbr = FUNC1(scheme->crColor[bkgnd]);
            FUNC5(DC, &rect, hbr);
            FUNC2(hbr);
        }

        FUNC13(DC, TRANSPARENT);

        rect.left += MENU_BAR_ITEMS_SPACE / 2;
        rect.right -= MENU_BAR_ITEMS_SPACE / 2;

        if (i == 1)
        {
            ++rect.left; ++rect.top; ++rect.right; ++rect.bottom;
            FUNC14(DC, scheme->crColor[COLOR_BTNHIGHLIGHT]);
            FUNC4(DC, Text, -1, &rect, uFormat);
            --rect.left; --rect.top; --rect.right; --rect.bottom;
            FUNC14(DC, scheme->crColor[COLOR_BTNSHADOW]);
        }
        FUNC4(DC, Text, -1, &rect, uFormat);
    }
    FUNC11(DC, hFontOld);

    return TRUE;
}