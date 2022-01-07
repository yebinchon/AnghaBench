
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int si ;
typedef enum SCROLL_HITTEST { ____Placeholder_SCROLL_HITTEST } SCROLL_HITTEST ;
struct TYPE_14__ {unsigned int y; unsigned int x; } ;
struct TYPE_13__ {unsigned int bottom; unsigned int right; int top; int left; } ;
struct TYPE_12__ {int cbSize; int fMask; } ;
struct TYPE_11__ {unsigned int cy; unsigned int cx; } ;
typedef TYPE_1__ SIZE ;
typedef TYPE_2__ SCROLLINFO ;
typedef TYPE_3__ RECT ;
typedef TYPE_4__ POINT ;
typedef int HWND ;
typedef int HTHEME ;
typedef int DWORD ;
typedef int BOOL ;


 int ABS_DOWNNORMAL ;
 int ABS_LEFTNORMAL ;
 int ABS_RIGHTNORMAL ;
 int ABS_UPNORMAL ;
 scalar_t__ FAILED (int ) ;
 int GWL_STYLE ;
 int GetScrollInfo (int ,int ,TYPE_2__*) ;
 int GetThemePartSize (int ,int *,int ,int ,int *,int ,TYPE_1__*) ;
 int GetWindowLongW (int ,int ) ;
 int GetWindowRect (int ,TYPE_3__*) ;
 int OffsetRect (TYPE_3__*,int ,int ) ;
 int SBP_ARROWBTN ;
 int SBS_VERT ;
 int SB_CTL ;
 int SCROLL_BOTTOM_ARROW ;
 int SCROLL_BOTTOM_RECT ;
 unsigned int SCROLL_MIN_RECT ;
 int SCROLL_NOWHERE ;
 int SCROLL_THUMB ;
 int SCROLL_TOP_ARROW ;
 int SCROLL_TOP_RECT ;
 int SIF_ALL ;
 int TS_DRAW ;
 int WARN (char*) ;
 int calc_thumb_dimensions (unsigned int,TYPE_2__*,unsigned int*,unsigned int*) ;

__attribute__((used)) static enum SCROLL_HITTEST hit_test(HWND hwnd, HTHEME theme, POINT pt)
{
    RECT r;
    DWORD style = GetWindowLongW(hwnd, GWL_STYLE);
    BOOL vertical = style & SBS_VERT;
    SIZE sz;
    SCROLLINFO si;
    unsigned int offset, size, upsize, downsize, thumbpos, thumbsize;

    GetWindowRect(hwnd, &r);
    OffsetRect(&r, -r.left, -r.top);

    if (vertical) {
        offset = pt.y;
        size = r.bottom;

        if (FAILED(GetThemePartSize(theme, ((void*)0), SBP_ARROWBTN, ABS_UPNORMAL, ((void*)0), TS_DRAW, &sz))) {
            WARN("Could not get up arrow size.\n");
            upsize = 0;
        } else
            upsize = sz.cy;

        if (FAILED(GetThemePartSize(theme, ((void*)0), SBP_ARROWBTN, ABS_DOWNNORMAL, ((void*)0), TS_DRAW, &sz))) {
            WARN("Could not get down arrow size.\n");
            downsize = 0;
        } else
            downsize = sz.cy;
    } else {
        offset = pt.x;
        size = r.right;

        if (FAILED(GetThemePartSize(theme, ((void*)0), SBP_ARROWBTN, ABS_LEFTNORMAL, ((void*)0), TS_DRAW, &sz))) {
            WARN("Could not get left arrow size.\n");
            upsize = 0;
        } else
            upsize = sz.cx;

        if (FAILED(GetThemePartSize(theme, ((void*)0), SBP_ARROWBTN, ABS_RIGHTNORMAL, ((void*)0), TS_DRAW, &sz))) {
            WARN("Could not get right arrow size.\n");
            downsize = 0;
        } else
            downsize = sz.cx;
    }

    if (pt.x < 0 || pt.x > r.right || pt.y < 0 || pt.y > r.bottom)
        return SCROLL_NOWHERE;

    if (size < SCROLL_MIN_RECT + upsize + downsize)
        upsize = downsize = (size - SCROLL_MIN_RECT)/2;

    if (offset < upsize)
        return SCROLL_TOP_ARROW;

    if (offset > size - downsize)
        return SCROLL_BOTTOM_ARROW;

    si.cbSize = sizeof(si);
    si.fMask = SIF_ALL;
    if (!GetScrollInfo(hwnd, SB_CTL, &si)) {
        WARN("GetScrollInfo failed.\n");
        return SCROLL_NOWHERE;
    }

    calc_thumb_dimensions(size - upsize - downsize, &si, &thumbpos, &thumbsize);

    if (offset < upsize + thumbpos)
        return SCROLL_TOP_RECT;
    else if (offset < upsize + thumbpos + thumbsize)
        return SCROLL_THUMB;
    else
        return SCROLL_BOTTOM_RECT;
}
