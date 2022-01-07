
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tme ;
typedef enum SCROLL_HITTEST { ____Placeholder_SCROLL_HITTEST } SCROLL_HITTEST ;
typedef int UINT ;
struct TYPE_3__ {int cbSize; int dwFlags; scalar_t__ hwndTrack; } ;
typedef TYPE_1__ TRACKMOUSEEVENT ;
typedef int POINT ;
typedef scalar_t__ HWND ;
typedef int HTHEME ;


 int GWL_STYLE ;
 int GetWindowLongW (scalar_t__,int ) ;
 int SBS_SIZEBOX ;
 int SBS_SIZEGRIP ;
 int SCROLL_NOWHERE ;
 int TME_LEAVE ;
 int TME_QUERY ;
 int TrackMouseEvent (TYPE_1__*) ;


 int hit_test (scalar_t__,int ,int ) ;
 int redraw_part (scalar_t__,int ,int) ;
 int tracking_hot_part ;
 scalar_t__ tracking_win ;

__attribute__((used)) static void scroll_event(HWND hwnd, HTHEME theme, UINT msg, POINT pt)
{
    enum SCROLL_HITTEST hittest;
    TRACKMOUSEEVENT tme;

    if (GetWindowLongW(hwnd, GWL_STYLE) & (SBS_SIZEGRIP | SBS_SIZEBOX))
        return;

    hittest = hit_test(hwnd, theme, pt);

    switch (msg)
    {
        case 128:
            hittest = hit_test(hwnd, theme, pt);
            tracking_win = hwnd;
            break;

        case 129:
            if (tracking_win == hwnd) {
                hittest = SCROLL_NOWHERE;
            }
            break;
    }

    tme.cbSize = sizeof(tme);
    tme.dwFlags = TME_QUERY;
    TrackMouseEvent(&tme);

    if (!(tme.dwFlags & TME_LEAVE) || tme.hwndTrack != hwnd) {
        tme.dwFlags = TME_LEAVE;
        tme.hwndTrack = hwnd;
        TrackMouseEvent(&tme);
    }

    if (tracking_win != hwnd && msg == 129) {
        redraw_part(hwnd, theme, SCROLL_NOWHERE);
        return;
    }

    if (tracking_win == hwnd && hittest != tracking_hot_part) {
        enum SCROLL_HITTEST oldhotpart = tracking_hot_part;

        tracking_hot_part = hittest;

        if (hittest != SCROLL_NOWHERE)
            redraw_part(hwnd, theme, hittest);
        else
            tracking_win = 0;

        if (oldhotpart != SCROLL_NOWHERE)
            redraw_part(hwnd, theme, oldhotpart);
    }
}
