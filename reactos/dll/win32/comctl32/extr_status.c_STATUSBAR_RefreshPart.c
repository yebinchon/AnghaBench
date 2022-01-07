
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ right; scalar_t__ left; } ;
struct TYPE_11__ {TYPE_7__ bound; } ;
struct TYPE_10__ {scalar_t__ clrBk; int Self; } ;
typedef TYPE_1__ STATUS_INFO ;
typedef TYPE_2__ STATUSWINDOWPART ;
typedef int RECT ;
typedef int HTHEME ;
typedef int HDC ;
typedef int HBRUSH ;


 scalar_t__ CLR_DEFAULT ;
 int COLOR_3DFACE ;
 int CreateSolidBrush (scalar_t__) ;
 int DeleteObject (int ) ;
 int DrawThemeBackground (int ,int ,int ,int ,int *,TYPE_7__*) ;
 int FillRect (int ,TYPE_7__*,int ) ;
 int GetClientRect (int ,int *) ;
 int GetSysColorBrush (int ) ;
 int GetWindowTheme (int ) ;
 int RectVisible (int ,TYPE_7__*) ;
 int STATUSBAR_DrawPart (TYPE_1__ const*,int ,TYPE_2__ const*,int) ;
 int TRACE (char*,int) ;

__attribute__((used)) static void
STATUSBAR_RefreshPart (const STATUS_INFO *infoPtr, HDC hdc, const STATUSWINDOWPART *part, int itemID)
{
    HBRUSH hbrBk;
    HTHEME theme;

    TRACE("item %d\n", itemID);

    if (part->bound.right < part->bound.left) return;

    if (!RectVisible(hdc, &part->bound))
        return;

    if ((theme = GetWindowTheme (infoPtr->Self)))
    {
        RECT cr;
        GetClientRect (infoPtr->Self, &cr);
        DrawThemeBackground(theme, hdc, 0, 0, &cr, &part->bound);
    }
    else
    {
        if (infoPtr->clrBk != CLR_DEFAULT)
                hbrBk = CreateSolidBrush (infoPtr->clrBk);
        else
                hbrBk = GetSysColorBrush (COLOR_3DFACE);
        FillRect(hdc, &part->bound, hbrBk);
        if (infoPtr->clrBk != CLR_DEFAULT)
                DeleteObject (hbrBk);
    }

    STATUSBAR_DrawPart (infoPtr, hdc, part, itemID);
}
