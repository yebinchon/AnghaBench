
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_12__ {int * crColor; scalar_t__ bFlatMenus; } ;
struct TYPE_11__ {int left; int right; scalar_t__ bottom; int top; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_1__* LPRECT ;
typedef int INT ;
typedef int HWND ;
typedef int HPEN ;
typedef int HMENU ;
typedef int HGDIOBJ ;
typedef int HFONT ;
typedef int HDC ;
typedef int HBRUSH ;
typedef int DWORD ;
typedef TYPE_3__ COLOR_SCHEME ;
typedef scalar_t__ BOOL ;


 int BDR_SUNKENOUTER ;
 int BF_RECT ;
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
 int CreatePen (int ,int ,int ) ;
 int CreateSolidBrush (int ) ;
 int DT_CALCRECT ;
 int DT_CENTER ;
 int DT_SINGLELINE ;
 int DT_VCENTER ;
 int DeleteObject (int ) ;
 int DrawEdge (int ,TYPE_1__*,int ,int ) ;
 int DrawTextW (int ,int *,int,TYPE_1__*,int) ;
 int FillRect (int ,TYPE_1__*,int ) ;
 int FrameRect (int ,TYPE_1__*,int ) ;
 int GetMenuStringW (int ,int,int *,int,int ) ;
 int InflateRect (TYPE_1__*,int,int) ;
 int LineTo (int ,int,scalar_t__) ;
 int MENU_BAR_ITEMS_SPACE ;
 int MF_BYPOSITION ;
 int MoveToEx (int ,int,scalar_t__,int *) ;
 int PS_SOLID ;
 int SelectObject (int ,int ) ;
 int SetBkColor (int ,int ) ;
 int SetBkMode (int ,int ) ;
 int SetTextColor (int ,int ) ;
 int TRANSPARENT ;
 int TRUE ;

DWORD
MyDrawMenuBarTemp(HWND Wnd, HDC DC, LPRECT Rect, HMENU Menu, HFONT Font, COLOR_SCHEME *scheme)
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
        hbr = CreateSolidBrush(scheme->crColor[COLOR_MENUBAR]);
    else
        hbr = CreateSolidBrush(scheme->crColor[COLOR_MENU]);
    FillRect(DC, Rect, hbr);
    DeleteObject(hbr);

    hPen = CreatePen(PS_SOLID, 0, scheme->crColor[COLOR_3DFACE]);
    hPenOld = SelectObject(DC, hPen);
    MoveToEx(DC, Rect->left, Rect->bottom - 1, ((void*)0));
    LineTo(DC, Rect->right, Rect->bottom - 1);
    SelectObject(DC, hPenOld);
    DeleteObject(hPen);

    bkgnd = (flat_menu ? COLOR_MENUBAR : COLOR_MENU);
    x = Rect->left;
    hFontOld = SelectObject(DC, Font);
    for (i = 0; i < 3; i++)
    {
        GetMenuStringW(Menu, i, Text, 128, MF_BYPOSITION);

        rect.left = rect.right = x;
        rect.top = Rect->top;
        rect.bottom = Rect->bottom;
        DrawTextW(DC, Text, -1, &rect, DT_SINGLELINE | DT_CALCRECT);
        rect.bottom = Rect->bottom;
        rect.right += MENU_BAR_ITEMS_SPACE;
        x += rect.right - rect.left;

        if (i == 2)
        {
            if (flat_menu)
            {
                SetTextColor(DC, scheme->crColor[COLOR_HIGHLIGHTTEXT]);
                SetBkColor(DC, scheme->crColor[COLOR_HIGHLIGHT]);

                InflateRect (&rect, -1, -1);
                hbr = CreateSolidBrush(scheme->crColor[COLOR_MENUHILIGHT]);
                FillRect(DC, &rect, hbr);
                DeleteObject(hbr);

                InflateRect (&rect, 1, 1);
                hbr = CreateSolidBrush(scheme->crColor[COLOR_HIGHLIGHT]);
                FrameRect(DC, &rect, hbr);
                DeleteObject(hbr);
            }
            else
            {
                SetTextColor(DC, scheme->crColor[COLOR_MENUTEXT]);
                SetBkColor(DC, scheme->crColor[COLOR_MENU]);
                DrawEdge(DC, &rect, BDR_SUNKENOUTER, BF_RECT);
            }
        }
        else
        {
            if (i == 1)
                SetTextColor(DC, scheme->crColor[COLOR_GRAYTEXT]);
            else
                SetTextColor(DC, scheme->crColor[COLOR_MENUTEXT]);

            SetBkColor(DC, scheme->crColor[bkgnd]);
            hbr = CreateSolidBrush(scheme->crColor[bkgnd]);
            FillRect(DC, &rect, hbr);
            DeleteObject(hbr);
        }

        SetBkMode(DC, TRANSPARENT);

        rect.left += MENU_BAR_ITEMS_SPACE / 2;
        rect.right -= MENU_BAR_ITEMS_SPACE / 2;

        if (i == 1)
        {
            ++rect.left; ++rect.top; ++rect.right; ++rect.bottom;
            SetTextColor(DC, scheme->crColor[COLOR_BTNHIGHLIGHT]);
            DrawTextW(DC, Text, -1, &rect, uFormat);
            --rect.left; --rect.top; --rect.right; --rect.bottom;
            SetTextColor(DC, scheme->crColor[COLOR_BTNSHADOW]);
        }
        DrawTextW(DC, Text, -1, &rect, uFormat);
    }
    SelectObject(DC, hFontOld);

    return TRUE;
}
