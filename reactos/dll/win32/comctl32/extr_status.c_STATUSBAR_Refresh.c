
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ clrBk; unsigned int numParts; int Notify; int Self; int * parts; int part0; scalar_t__ simple; scalar_t__ hDefaultFont; scalar_t__ hFont; } ;
typedef TYPE_1__ STATUS_INFO ;
typedef int RECT ;
typedef int LRESULT ;
typedef int HTHEME ;
typedef scalar_t__ HFONT ;
typedef int HDC ;
typedef int HBRUSH ;


 scalar_t__ CLR_DEFAULT ;
 int COLOR_3DFACE ;
 int CreateSolidBrush (scalar_t__) ;
 int DeleteObject (int ) ;
 int DrawThemeBackground (int ,int ,int ,int ,int *,int *) ;
 int FillRect (int ,int *,int ) ;
 int GWL_STYLE ;
 int GetClientRect (int ,int *) ;
 int GetSysColorBrush (int ) ;
 int GetWindowLongW (int ,int ) ;
 int GetWindowTheme (int ) ;
 int IsWindowVisible (int ) ;
 int SBARS_SIZEGRIP ;
 int STATUSBAR_DrawSizeGrip (int ,int ,int *) ;
 int STATUSBAR_RefreshPart (TYPE_1__*,int ,int *,unsigned int) ;
 int STATUSBAR_SetPartBounds (TYPE_1__*) ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int TRACE (char*) ;
 int WS_MAXIMIZE ;

__attribute__((used)) static LRESULT
STATUSBAR_Refresh (STATUS_INFO *infoPtr, HDC hdc)
{
    RECT rect;
    HBRUSH hbrBk;
    HFONT hOldFont;
    HTHEME theme;

    TRACE("\n");
    if (!IsWindowVisible(infoPtr->Self))
        return 0;

    STATUSBAR_SetPartBounds(infoPtr);

    GetClientRect (infoPtr->Self, &rect);

    if ((theme = GetWindowTheme (infoPtr->Self)))
    {
        DrawThemeBackground(theme, hdc, 0, 0, &rect, ((void*)0));
    }
    else
    {
        if (infoPtr->clrBk != CLR_DEFAULT)
            hbrBk = CreateSolidBrush (infoPtr->clrBk);
        else
            hbrBk = GetSysColorBrush (COLOR_3DFACE);
        FillRect(hdc, &rect, hbrBk);
        if (infoPtr->clrBk != CLR_DEFAULT)
            DeleteObject (hbrBk);
    }

    hOldFont = SelectObject (hdc, infoPtr->hFont ? infoPtr->hFont : infoPtr->hDefaultFont);

    if (infoPtr->simple) {
 STATUSBAR_RefreshPart (infoPtr, hdc, &infoPtr->part0, 0);
    } else {
        unsigned int i;

 for (i = 0; i < infoPtr->numParts; i++) {
     STATUSBAR_RefreshPart (infoPtr, hdc, &infoPtr->parts[i], i);
 }
    }

    SelectObject (hdc, hOldFont);

    if ((GetWindowLongW (infoPtr->Self, GWL_STYLE) & SBARS_SIZEGRIP)
            && !(GetWindowLongW (infoPtr->Notify, GWL_STYLE) & WS_MAXIMIZE))
     STATUSBAR_DrawSizeGrip (theme, hdc, &rect);

    return 0;
}
