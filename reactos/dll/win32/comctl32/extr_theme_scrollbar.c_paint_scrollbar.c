
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int si ;
typedef int sbi ;
struct TYPE_19__ {unsigned int cyTopHeight; unsigned int cyBottomHeight; unsigned int cxLeftWidth; unsigned int cxRightWidth; } ;
struct TYPE_18__ {scalar_t__ left; scalar_t__ top; scalar_t__ bottom; scalar_t__ right; } ;
struct TYPE_17__ {int cbSize; } ;
struct TYPE_16__ {int cbSize; int fMask; } ;
struct TYPE_15__ {unsigned int cy; unsigned int cx; } ;
typedef TYPE_1__ SIZE ;
typedef TYPE_2__ SCROLLINFO ;
typedef TYPE_3__ SCROLLBARINFO ;
typedef TYPE_4__ RECT ;
typedef int PAINTSTRUCT ;
typedef TYPE_5__ MARGINS ;
typedef scalar_t__ HWND ;
typedef int HTHEME ;
typedef int HDC ;
typedef int DWORD ;
typedef int BOOL ;


 int ABS_DOWNDISABLED ;
 int ABS_DOWNHOT ;
 int ABS_DOWNNORMAL ;
 int ABS_LEFTDISABLED ;
 int ABS_LEFTHOT ;
 int ABS_LEFTNORMAL ;
 int ABS_RIGHTDISABLED ;
 int ABS_RIGHTHOT ;
 int ABS_RIGHTNORMAL ;
 int ABS_UPDISABLED ;
 int ABS_UPHOT ;
 int ABS_UPNORMAL ;
 int BeginPaint (scalar_t__,int *) ;
 int DrawThemeBackground (int ,int ,int ,int,TYPE_4__*,int *) ;
 int EndPaint (scalar_t__,int *) ;
 scalar_t__ FAILED (int ) ;
 int GWL_STYLE ;
 int GetScrollBarInfo (scalar_t__,int ,TYPE_3__*) ;
 int GetScrollInfo (scalar_t__,int ,TYPE_2__*) ;
 int GetThemeMargins (int ,int ,int ,int,int ,TYPE_4__*,TYPE_5__*) ;
 int GetThemePartSize (int ,int ,int ,int,int *,int ,TYPE_1__*) ;
 int GetWindowLongW (scalar_t__,int ) ;
 int GetWindowRect (scalar_t__,TYPE_4__*) ;
 int IsWindowEnabled (scalar_t__) ;
 int OBJID_CLIENT ;
 int OffsetRect (TYPE_4__*,scalar_t__,scalar_t__) ;
 int SBP_ARROWBTN ;
 int SBP_GRIPPERHORZ ;
 int SBP_GRIPPERVERT ;
 int SBP_LOWERTRACKHORZ ;
 int SBP_LOWERTRACKVERT ;
 int SBP_SIZEBOX ;
 int SBP_THUMBBTNHORZ ;
 int SBP_THUMBBTNVERT ;
 int SBP_UPPERTRACKHORZ ;
 int SBP_UPPERTRACKVERT ;
 int SBS_SIZEBOX ;
 int SBS_SIZEBOXTOPLEFTALIGN ;
 int SBS_SIZEGRIP ;
 int SBS_VERT ;
 int SB_CTL ;
 int SCRBS_DISABLED ;
 int SCRBS_HOT ;
 int SCRBS_NORMAL ;
 scalar_t__ SCROLL_BOTTOM_ARROW ;
 scalar_t__ SCROLL_BOTTOM_RECT ;
 scalar_t__ SCROLL_MIN_RECT ;
 scalar_t__ SCROLL_THUMB ;
 scalar_t__ SCROLL_TOP_ARROW ;
 scalar_t__ SCROLL_TOP_RECT ;
 int SIF_ALL ;
 scalar_t__ SUCCEEDED (int ) ;
 int SZB_RIGHTALIGN ;
 int SZB_TOPLEFTALIGN ;
 int TMT_CONTENTMARGINS ;
 int TS_DRAW ;
 int WARN (char*) ;
 int calc_thumb_dimensions (unsigned int,TYPE_2__*,unsigned int*,unsigned int*) ;
 scalar_t__ tracking_hot_part ;
 scalar_t__ tracking_win ;

__attribute__((used)) static void paint_scrollbar(HWND hwnd, HTHEME theme)
{
    HDC dc;
    PAINTSTRUCT ps;
    RECT r;
    DWORD style = GetWindowLongW(hwnd, GWL_STYLE);
    BOOL vertical = style & SBS_VERT;
    BOOL disabled = !IsWindowEnabled(hwnd);

    GetWindowRect(hwnd, &r);
    OffsetRect(&r, -r.left, -r.top);

    dc = BeginPaint(hwnd, &ps);

    if (style & SBS_SIZEBOX || style & SBS_SIZEGRIP) {
        int state;

        if (style & SBS_SIZEBOXTOPLEFTALIGN)
            state = SZB_TOPLEFTALIGN;
        else
            state = SZB_RIGHTALIGN;

        DrawThemeBackground(theme, dc, SBP_SIZEBOX, state, &r, ((void*)0));
    } else {
        SCROLLBARINFO sbi;
        SCROLLINFO si;
        unsigned int thumbpos, thumbsize;
        int uppertrackstate, lowertrackstate, thumbstate;
        RECT partrect, trackrect;
        SIZE grippersize;

        sbi.cbSize = sizeof(sbi);
        GetScrollBarInfo(hwnd, OBJID_CLIENT, &sbi);

        si.cbSize = sizeof(si);
        si.fMask = SIF_ALL;
        GetScrollInfo(hwnd, SB_CTL, &si);

        trackrect = r;

        if (disabled) {
            uppertrackstate = SCRBS_DISABLED;
            lowertrackstate = SCRBS_DISABLED;
            thumbstate = SCRBS_DISABLED;
        } else {
            uppertrackstate = SCRBS_NORMAL;
            lowertrackstate = SCRBS_NORMAL;
            thumbstate = SCRBS_NORMAL;

            if (tracking_win == hwnd) {
                if (tracking_hot_part == SCROLL_TOP_RECT)
                    uppertrackstate = SCRBS_HOT;
                else if (tracking_hot_part == SCROLL_BOTTOM_RECT)
                    lowertrackstate = SCRBS_HOT;
                else if (tracking_hot_part == SCROLL_THUMB)
                    thumbstate = SCRBS_HOT;
            }
        }

        if (vertical) {
            SIZE upsize, downsize;
            int uparrowstate, downarrowstate;

            if (disabled) {
                uparrowstate = ABS_UPDISABLED;
                downarrowstate = ABS_DOWNDISABLED;
            } else {
                uparrowstate = ABS_UPNORMAL;
                downarrowstate = ABS_DOWNNORMAL;

                if (tracking_win == hwnd) {
                    if (tracking_hot_part == SCROLL_TOP_ARROW)
                        uparrowstate = ABS_UPHOT;
                    else if (tracking_hot_part == SCROLL_BOTTOM_ARROW)
                        downarrowstate = ABS_DOWNHOT;
                }
            }

            if (FAILED(GetThemePartSize(theme, dc, SBP_ARROWBTN, uparrowstate, ((void*)0), TS_DRAW, &upsize))) {
                WARN("Could not get up arrow size.\n");
                return;
            }

            if (FAILED(GetThemePartSize(theme, dc, SBP_ARROWBTN, downarrowstate, ((void*)0), TS_DRAW, &downsize))) {
                WARN("Could not get down arrow size.\n");
                return;
            }

            if (r.bottom - r.top - upsize.cy - downsize.cy < SCROLL_MIN_RECT)
                upsize.cy = downsize.cy = (r.bottom - r.top - SCROLL_MIN_RECT)/2;

            partrect = r;
            partrect.bottom = partrect.top + upsize.cy;
            DrawThemeBackground(theme, dc, SBP_ARROWBTN, uparrowstate, &partrect, ((void*)0));

            trackrect.top = partrect.bottom;

            partrect.bottom = r.bottom;
            partrect.top = partrect.bottom - downsize.cy;
            DrawThemeBackground(theme, dc, SBP_ARROWBTN, downarrowstate, &partrect, ((void*)0));

            trackrect.bottom = partrect.top;

            calc_thumb_dimensions(trackrect.bottom - trackrect.top, &si, &thumbpos, &thumbsize);

            if (thumbpos > 0) {
                partrect.top = trackrect.top;
                partrect.bottom = partrect.top + thumbpos;

                DrawThemeBackground(theme, dc, SBP_UPPERTRACKVERT, uppertrackstate, &partrect, ((void*)0));
            }

            if (thumbsize > 0) {
                partrect.top = trackrect.top + thumbpos;
                partrect.bottom = partrect.top + thumbsize;

                DrawThemeBackground(theme, dc, SBP_THUMBBTNVERT, thumbstate, &partrect, ((void*)0));

                if (SUCCEEDED(GetThemePartSize(theme, dc, SBP_GRIPPERVERT, thumbstate, ((void*)0), TS_DRAW, &grippersize))) {
                    MARGINS margins;

                    if (SUCCEEDED(GetThemeMargins(theme, dc, SBP_THUMBBTNVERT, thumbstate, TMT_CONTENTMARGINS, &partrect, &margins))) {
                        if (grippersize.cy <= (thumbsize - margins.cyTopHeight - margins.cyBottomHeight))
                            DrawThemeBackground(theme, dc, SBP_GRIPPERVERT, thumbstate, &partrect, ((void*)0));
                    }
                }
            }

            if (thumbpos + thumbsize < trackrect.bottom - trackrect.top) {
                partrect.bottom = trackrect.bottom;
                partrect.top = trackrect.top + thumbsize + thumbpos;

                DrawThemeBackground(theme, dc, SBP_LOWERTRACKVERT, lowertrackstate, &partrect, ((void*)0));
            }
        } else {
            SIZE leftsize, rightsize;
            int leftarrowstate, rightarrowstate;

            if (disabled) {
                leftarrowstate = ABS_LEFTDISABLED;
                rightarrowstate = ABS_RIGHTDISABLED;
            } else {
                leftarrowstate = ABS_LEFTNORMAL;
                rightarrowstate = ABS_RIGHTNORMAL;

                if (tracking_win == hwnd) {
                    if (tracking_hot_part == SCROLL_TOP_ARROW)
                        leftarrowstate = ABS_LEFTHOT;
                    else if (tracking_hot_part == SCROLL_BOTTOM_ARROW)
                        rightarrowstate = ABS_RIGHTHOT;
                }
            }

            if (FAILED(GetThemePartSize(theme, dc, SBP_ARROWBTN, leftarrowstate, ((void*)0), TS_DRAW, &leftsize))) {
                WARN("Could not get left arrow size.\n");
                return;
            }

            if (FAILED(GetThemePartSize(theme, dc, SBP_ARROWBTN, rightarrowstate, ((void*)0), TS_DRAW, &rightsize))) {
                WARN("Could not get right arrow size.\n");
                return;
            }

            if (r.right - r.left - leftsize.cx - rightsize.cx < SCROLL_MIN_RECT)
                leftsize.cx = rightsize.cx = (r.right - r.left - SCROLL_MIN_RECT)/2;

            partrect = r;
            partrect.right = partrect.left + leftsize.cx;
            DrawThemeBackground(theme, dc, SBP_ARROWBTN, leftarrowstate, &partrect, ((void*)0));

            trackrect.left = partrect.right;

            partrect.right = r.right;
            partrect.left = partrect.right - rightsize.cx;
            DrawThemeBackground(theme, dc, SBP_ARROWBTN, rightarrowstate, &partrect, ((void*)0));

            trackrect.right = partrect.left;

            calc_thumb_dimensions(trackrect.right - trackrect.left, &si, &thumbpos, &thumbsize);

            if (thumbpos > 0) {
                partrect.left = trackrect.left;
                partrect.right = partrect.left + thumbpos;

                DrawThemeBackground(theme, dc, SBP_UPPERTRACKHORZ, uppertrackstate, &partrect, ((void*)0));
            }

            if (thumbsize > 0) {
                partrect.left = trackrect.left + thumbpos;
                partrect.right = partrect.left + thumbsize;

                DrawThemeBackground(theme, dc, SBP_THUMBBTNHORZ, thumbstate, &partrect, ((void*)0));

                if (SUCCEEDED(GetThemePartSize(theme, dc, SBP_GRIPPERHORZ, thumbstate, ((void*)0), TS_DRAW, &grippersize))) {
                    MARGINS margins;

                    if (SUCCEEDED(GetThemeMargins(theme, dc, SBP_THUMBBTNHORZ, thumbstate, TMT_CONTENTMARGINS, &partrect, &margins))) {
                        if (grippersize.cx <= (thumbsize - margins.cxLeftWidth - margins.cxRightWidth))
                            DrawThemeBackground(theme, dc, SBP_GRIPPERHORZ, thumbstate, &partrect, ((void*)0));
                    }
                }
            }

            if (thumbpos + thumbsize < trackrect.right - trackrect.left) {
                partrect.right = trackrect.right;
                partrect.left = trackrect.left + thumbsize + thumbpos;

                DrawThemeBackground(theme, dc, SBP_LOWERTRACKHORZ, lowertrackstate, &partrect, ((void*)0));
            }
        }
    }

    EndPaint(hwnd, &ps);
}
