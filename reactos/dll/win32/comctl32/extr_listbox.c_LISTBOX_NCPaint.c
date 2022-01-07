
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int self; } ;
struct TYPE_8__ {int left; int top; scalar_t__ bottom; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ LB_DESCR ;
typedef int HTHEME ;
typedef int HRGN ;
typedef int HDC ;
typedef int DWORD ;


 int CombineRgn (int ,int ,int ,int ) ;
 int CreateRectRgn (int,int,scalar_t__,scalar_t__) ;
 int DCX_INTERSECTRGN ;
 int DCX_WINDOW ;
 int DrawThemeBackground (int ,int ,int ,int ,TYPE_1__*,int ) ;
 int DrawThemeParentBackground (int ,int ,TYPE_1__*) ;
 int ExcludeClipRect (int ,int,int,scalar_t__,scalar_t__) ;
 int GWL_EXSTYLE ;
 int GetDCEx (int ,int ,int) ;
 int GetSystemMetrics (int ) ;
 int GetWindowDC (int ) ;
 int GetWindowLongW (int ,int ) ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int GetWindowTheme (int ) ;
 scalar_t__ IsThemeBackgroundPartiallyTransparent (int ,int ,int ) ;
 int OffsetRect (TYPE_1__*,int,int) ;
 int RGN_AND ;
 int ReleaseDC (int ,int ) ;
 int SM_CXEDGE ;
 int SM_CYEDGE ;
 int WS_EX_CLIENTEDGE ;

__attribute__((used)) static void LISTBOX_NCPaint( LB_DESCR *descr, HRGN region )
{
    DWORD exstyle = GetWindowLongW( descr->self, GWL_EXSTYLE);
    HTHEME theme = GetWindowTheme( descr->self );
    HRGN cliprgn = region;
    int cxEdge, cyEdge;
    HDC hdc;
    RECT r;

    if (!theme || !(exstyle & WS_EX_CLIENTEDGE))
        return;

    cxEdge = GetSystemMetrics(SM_CXEDGE),
    cyEdge = GetSystemMetrics(SM_CYEDGE);

    GetWindowRect(descr->self, &r);


    cliprgn = CreateRectRgn(r.left + cxEdge, r.top + cyEdge,
        r.right - cxEdge, r.bottom - cyEdge);
    if (region != (HRGN)1)
        CombineRgn(cliprgn, cliprgn, region, RGN_AND);
    OffsetRect(&r, -r.left, -r.top);
    hdc = GetDCEx(descr->self, region, DCX_WINDOW|DCX_INTERSECTRGN);
    OffsetRect(&r, -r.left, -r.top);


    if (IsThemeBackgroundPartiallyTransparent (theme, 0, 0))
        DrawThemeParentBackground(descr->self, hdc, &r);
    DrawThemeBackground (theme, hdc, 0, 0, &r, 0);
    ReleaseDC(descr->self, hdc);
}
