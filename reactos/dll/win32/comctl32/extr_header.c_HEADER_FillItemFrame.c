
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int hwndSelf; } ;
struct TYPE_5__ {scalar_t__ bDown; } ;
typedef int RECT ;
typedef scalar_t__ HTHEME ;
typedef TYPE_1__ HEADER_ITEM ;
typedef TYPE_2__ HEADER_INFO ;
typedef int HDC ;
typedef int HBRUSH ;
typedef scalar_t__ BOOL ;


 int CreateSolidBrush (int ) ;
 int DeleteObject (int ) ;
 int DrawThemeBackground (scalar_t__,int ,int ,int,int *,int *) ;
 int FillRect (int ,int *,int ) ;
 int GetBkColor (int ) ;
 int GetThemeBackgroundContentRect (scalar_t__,int ,int ,int,int *,int *) ;
 scalar_t__ GetWindowTheme (int ) ;
 int HIS_HOT ;
 int HIS_NORMAL ;
 int HIS_PRESSED ;
 int HP_HEADERITEM ;

__attribute__((used)) static void
HEADER_FillItemFrame(HEADER_INFO *infoPtr, HDC hdc, RECT *r, const HEADER_ITEM *item, BOOL hottrack)
{
    HTHEME theme = GetWindowTheme (infoPtr->hwndSelf);

    if (theme) {
        int state = (item->bDown) ? HIS_PRESSED : (hottrack ? HIS_HOT : HIS_NORMAL);
        DrawThemeBackground (theme, hdc, HP_HEADERITEM, state, r, ((void*)0));
        GetThemeBackgroundContentRect (theme, hdc, HP_HEADERITEM, state, r, r);
    }
    else
    {
        HBRUSH hbr = CreateSolidBrush(GetBkColor(hdc));
        FillRect(hdc, r, hbr);
        DeleteObject(hbr);
    }
}
