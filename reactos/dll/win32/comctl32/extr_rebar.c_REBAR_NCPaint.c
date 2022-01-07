
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int dwStyle; int hwndSelf; } ;
struct TYPE_9__ {int top; int left; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ REBAR_INFO ;
typedef int LRESULT ;
typedef int HTHEME ;
typedef int HDC ;


 int BDR_RAISEDINNER ;
 int BF_RECT ;
 int BF_TOP ;
 int DCX_USESTYLE ;
 int DCX_WINDOW ;
 int DrawEdge (int ,TYPE_1__*,int ,int ) ;
 int DrawThemeEdge (int ,int ,int ,int ,TYPE_1__*,int ,int ,int *) ;
 int EDGE_ETCHED ;
 int GetDCEx (int ,int ,int) ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int GetWindowTheme (int ) ;
 int OffsetRect (TYPE_1__*,int ,int ) ;
 int ReleaseDC (int ,int ) ;
 int TRACE (char*,int ) ;
 int WS_BORDER ;
 int WS_MINIMIZE ;
 int wine_dbgstr_rect (TYPE_1__*) ;

__attribute__((used)) static LRESULT
REBAR_NCPaint (const REBAR_INFO *infoPtr)
{
    RECT rcWindow;
    HDC hdc;
    HTHEME theme;

    if (infoPtr->dwStyle & WS_MINIMIZE)
 return 0;

    if (infoPtr->dwStyle & WS_BORDER) {


 if (!(hdc = GetDCEx( infoPtr->hwndSelf, 0, DCX_USESTYLE | DCX_WINDOW )))
     return 0;
 GetWindowRect (infoPtr->hwndSelf, &rcWindow);
 OffsetRect (&rcWindow, -rcWindow.left, -rcWindow.top);
        TRACE("rect (%s)\n", wine_dbgstr_rect(&rcWindow));
 DrawEdge (hdc, &rcWindow, EDGE_ETCHED, BF_RECT);
 ReleaseDC( infoPtr->hwndSelf, hdc );
    }
    else if ((theme = GetWindowTheme (infoPtr->hwndSelf)))
    {

        if (!(hdc = GetDCEx( infoPtr->hwndSelf, 0, DCX_USESTYLE | DCX_WINDOW )))
            return 0;
        GetWindowRect (infoPtr->hwndSelf, &rcWindow);
        OffsetRect (&rcWindow, -rcWindow.left, -rcWindow.top);
        TRACE("rect (%s)\n", wine_dbgstr_rect(&rcWindow));
        DrawThemeEdge (theme, hdc, 0, 0, &rcWindow, BDR_RAISEDINNER, BF_TOP, ((void*)0));
        ReleaseDC( infoPtr->hwndSelf, hdc );
    }

    return 0;
}
