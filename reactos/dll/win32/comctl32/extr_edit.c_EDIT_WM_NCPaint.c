
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_6__ {int left; int top; scalar_t__ bottom; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef scalar_t__ HWND ;
typedef scalar_t__ HTHEME ;
typedef scalar_t__ HRGN ;
typedef int HDC ;
typedef int DWORD ;


 int CombineRgn (scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ CreateRectRgn (int,int,scalar_t__,scalar_t__) ;
 int DCX_INTERSECTRGN ;
 int DCX_WINDOW ;
 int DefWindowProcW (scalar_t__,int ,int ,int ) ;
 int DrawThemeBackground (scalar_t__,int ,int const,int,TYPE_1__*,int ) ;
 int DrawThemeParentBackground (scalar_t__,int ,TYPE_1__*) ;
 int EP_EDITTEXT ;
 int ES_READONLY ;
 int ETS_DISABLED ;
 int ETS_FOCUSED ;
 int ETS_NORMAL ;
 int ETS_READONLY ;
 int ExcludeClipRect (int ,int,int,scalar_t__,scalar_t__) ;
 int GWL_EXSTYLE ;
 int GWL_STYLE ;
 int GetDCEx (scalar_t__,scalar_t__,int) ;
 scalar_t__ GetFocus () ;
 int GetSystemMetrics (int ) ;
 int GetWindowDC (scalar_t__) ;
 int GetWindowLongW (scalar_t__,int ) ;
 int GetWindowRect (scalar_t__,TYPE_1__*) ;
 scalar_t__ GetWindowTheme (scalar_t__) ;
 scalar_t__ IsThemeBackgroundPartiallyTransparent (scalar_t__,int const,int) ;
 int IsWindowEnabled (scalar_t__) ;
 int OffsetRect (TYPE_1__*,int,int) ;
 int RGN_AND ;
 int ReleaseDC (scalar_t__,int ) ;
 int SM_CXEDGE ;
 int SM_CYEDGE ;
 int WM_NCPAINT ;
 int WS_EX_CLIENTEDGE ;

__attribute__((used)) static void EDIT_WM_NCPaint(HWND hwnd, HRGN region)
{
    DWORD exStyle = GetWindowLongW(hwnd, GWL_EXSTYLE);
    HTHEME theme = GetWindowTheme(hwnd);
    HRGN cliprgn = region;

    if (theme && exStyle & WS_EX_CLIENTEDGE)
    {
        HDC dc;
        RECT r;
        int cxEdge = GetSystemMetrics(SM_CXEDGE),
            cyEdge = GetSystemMetrics(SM_CYEDGE);
        const int part = EP_EDITTEXT;
        int state = ETS_NORMAL;
        DWORD dwStyle = GetWindowLongW(hwnd, GWL_STYLE);

        if (!IsWindowEnabled(hwnd))
            state = ETS_DISABLED;
        else if (dwStyle & ES_READONLY)
            state = ETS_READONLY;
        else if (GetFocus() == hwnd)
            state = ETS_FOCUSED;

        GetWindowRect(hwnd, &r);


        cliprgn = CreateRectRgn(r.left + cxEdge, r.top + cyEdge,
            r.right - cxEdge, r.bottom - cyEdge);
        if (region != (HRGN)1)
            CombineRgn(cliprgn, cliprgn, region, RGN_AND);
        OffsetRect(&r, -r.left, -r.top);
        dc = GetDCEx(hwnd, region, DCX_WINDOW|DCX_INTERSECTRGN);
        OffsetRect(&r, -r.left, -r.top);


        if (IsThemeBackgroundPartiallyTransparent(theme, part, state))
            DrawThemeParentBackground(hwnd, dc, &r);
        DrawThemeBackground(theme, dc, part, state, &r, 0);
        ReleaseDC(hwnd, dc);
    }


    DefWindowProcW (hwnd, WM_NCPAINT, (WPARAM)cliprgn, 0);
}
