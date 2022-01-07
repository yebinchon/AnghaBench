
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_11__ {scalar_t__ top; scalar_t__ bottom; } ;
struct TYPE_10__ {int Self; scalar_t__ minHeight; scalar_t__ verticalBorder; scalar_t__ hDefaultFont; scalar_t__ hFont; } ;
struct TYPE_9__ {int tmInternalLeading; scalar_t__ tmHeight; } ;
typedef TYPE_1__ TEXTMETRICW ;
typedef TYPE_2__ STATUS_INFO ;
typedef TYPE_3__ RECT ;
typedef int HTHEME ;
typedef int HDC ;


 int COMCTL32_GetFontMetrics (scalar_t__,TYPE_1__*) ;
 int GetDC (int ) ;
 int GetSystemMetrics (int ) ;
 int GetThemeBackgroundExtent (int ,int ,int ,int ,TYPE_3__*,TYPE_3__*) ;
 int GetWindowTheme (int ) ;
 int ReleaseDC (int ,int ) ;
 int SM_CYBORDER ;
 int SP_PANE ;
 scalar_t__ SUCCEEDED (int ) ;
 int SetRect (TYPE_3__*,int ,int ,int ,scalar_t__) ;
 int TRACE (char*,scalar_t__,int,scalar_t__) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;

__attribute__((used)) static UINT
STATUSBAR_ComputeHeight(STATUS_INFO *infoPtr)
{
    HTHEME theme;
    UINT height;
    TEXTMETRICW tm;
    int margin;

    COMCTL32_GetFontMetrics(infoPtr->hFont ? infoPtr->hFont : infoPtr->hDefaultFont, &tm);
    margin = (tm.tmInternalLeading ? tm.tmInternalLeading : 2);
    height = max(tm.tmHeight + margin + 2*GetSystemMetrics(SM_CYBORDER), infoPtr->minHeight) + infoPtr->verticalBorder;

    if ((theme = GetWindowTheme(infoPtr->Self)))
    {


        HDC hdc = GetDC(infoPtr->Self);
        RECT r;

        SetRect(&r, 0, 0, 0, max(infoPtr->minHeight, tm.tmHeight));
        if (SUCCEEDED(GetThemeBackgroundExtent(theme, hdc, SP_PANE, 0, &r, &r)))
        {
            height = r.bottom - r.top;
        }
        ReleaseDC(infoPtr->Self, hdc);
    }

    TRACE("    textHeight=%d+%d, final height=%d\n", tm.tmHeight, tm.tmInternalLeading, height);
    return height;
}
