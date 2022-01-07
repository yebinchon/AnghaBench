
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwStyle; int rcSelection; int hwndSelf; int rcChannel; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int RECT ;
typedef scalar_t__ HTHEME ;
typedef int HDC ;


 int BF_ADJUST ;
 int BF_RECT ;
 int COLOR_HIGHLIGHT ;
 int DrawEdge (int ,int *,int ,int) ;
 int DrawThemeBackground (scalar_t__,int ,int ,int ,int *,int ) ;
 int EDGE_SUNKEN ;
 int FillRect (int ,int *,int ) ;
 int GetStockObject (int ) ;
 int GetSysColorBrush (int ) ;
 scalar_t__ GetWindowTheme (int ) ;
 int TBS_ENABLESELRANGE ;
 int TBS_VERT ;
 int TKP_TRACK ;
 int TKP_TRACKVERT ;
 int TKS_NORMAL ;
 scalar_t__ TRACKBAR_HasSelection (TYPE_1__ const*) ;
 int WHITE_BRUSH ;

__attribute__((used)) static void
TRACKBAR_DrawChannel (const TRACKBAR_INFO *infoPtr, HDC hdc)
{
    RECT rcChannel = infoPtr->rcChannel;
    HTHEME theme = GetWindowTheme (infoPtr->hwndSelf);

    if (theme)
    {
        DrawThemeBackground (theme, hdc,
            (infoPtr->dwStyle & TBS_VERT) ?
                TKP_TRACKVERT : TKP_TRACK, TKS_NORMAL, &rcChannel, 0);
    }
    else
    {
        DrawEdge (hdc, &rcChannel, EDGE_SUNKEN, BF_RECT | BF_ADJUST);
        if (infoPtr->dwStyle & TBS_ENABLESELRANGE) {
            FillRect (hdc, &rcChannel, GetStockObject(WHITE_BRUSH));
            if (TRACKBAR_HasSelection(infoPtr))
                FillRect (hdc, &infoPtr->rcSelection, GetSysColorBrush(COLOR_HIGHLIGHT));
        }
    }
}
