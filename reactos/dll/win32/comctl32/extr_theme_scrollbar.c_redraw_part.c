
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int si ;
typedef enum SCROLL_HITTEST { ____Placeholder_SCROLL_HITTEST } SCROLL_HITTEST ;
struct TYPE_12__ {unsigned int left; unsigned int top; unsigned int bottom; unsigned int right; } ;
struct TYPE_11__ {int cbSize; int fMask; } ;
struct TYPE_10__ {unsigned int cy; unsigned int cx; } ;
typedef TYPE_1__ SIZE ;
typedef TYPE_2__ SCROLLINFO ;
typedef TYPE_3__ RECT ;
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
 int InvalidateRect (int ,TYPE_3__*,int ) ;
 int OffsetRect (TYPE_3__*,unsigned int,unsigned int) ;
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
 int TRUE ;
 int TS_DRAW ;
 int WARN (char*) ;
 int calc_thumb_dimensions (unsigned int,TYPE_2__*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void redraw_part(HWND hwnd, HTHEME theme, enum SCROLL_HITTEST part)
{
    DWORD style = GetWindowLongW(hwnd, GWL_STYLE);
    BOOL vertical = style & SBS_VERT;
    SIZE sz;
    RECT r, partrect;
    unsigned int size, upsize, downsize;

    if (part == SCROLL_NOWHERE) {
        InvalidateRect(hwnd, ((void*)0), TRUE);
        return;
    }

    GetWindowRect(hwnd, &r);
    OffsetRect(&r, -r.left, -r.top);

    if (vertical) {
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

    if (size < SCROLL_MIN_RECT + upsize + downsize)
        upsize = downsize = (size - SCROLL_MIN_RECT)/2;

    partrect = r;

    if (part == SCROLL_TOP_ARROW) {
        if (vertical)
            partrect.bottom = partrect.top + upsize;
        else
            partrect.right = partrect.left + upsize;
    } else if (part == SCROLL_BOTTOM_ARROW) {
        if (vertical)
            partrect.top = partrect.bottom - downsize;
        else
            partrect.left = partrect.right - downsize;
    } else {
        unsigned int thumbpos, thumbsize;
        SCROLLINFO si;

        si.cbSize = sizeof(si);
        si.fMask = SIF_ALL;
        if (!GetScrollInfo(hwnd, SB_CTL, &si)) {
            WARN("GetScrollInfo failed.\n");
            return;
        }

        calc_thumb_dimensions(size - upsize - downsize, &si, &thumbpos, &thumbsize);

        if (part == SCROLL_TOP_RECT) {
            if (vertical) {
                partrect.top = r.top + upsize;
                partrect.bottom = partrect.top + thumbpos;
            } else {
                partrect.left = r.left + upsize;
                partrect.right = partrect.left + thumbpos;
            }
        } else if (part == SCROLL_THUMB) {
            if (vertical) {
                partrect.top = r.top + upsize + thumbpos;
                partrect.bottom = partrect.top + thumbsize;
            } else {
                partrect.left = r.left + upsize + thumbpos;
                partrect.right = partrect.left + thumbsize;
            }
        } else if (part == SCROLL_BOTTOM_RECT) {
            if (vertical) {
                partrect.top = r.top + upsize + thumbpos + thumbsize;
                partrect.bottom = r.bottom - downsize;
            } else {
                partrect.left = r.left + upsize + thumbpos + thumbsize;
                partrect.right = r.right - downsize;
            }
        }
    }

    InvalidateRect(hwnd, &partrect, TRUE);
}
