
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ UINT ;
struct TYPE_14__ {int bottom; int top; int right; scalar_t__ left; } ;
struct TYPE_15__ {int itemID; int CtlID; scalar_t__ itemData; TYPE_3__ rcItem; int hDC; int hwndItem; } ;
struct TYPE_13__ {int style; scalar_t__ text; int hIcon; TYPE_3__ bound; } ;
struct TYPE_12__ {int numParts; int Notify; int Self; scalar_t__ simple; } ;
typedef TYPE_1__ STATUS_INFO ;
typedef TYPE_2__ STATUSWINDOWPART ;
typedef TYPE_3__ RECT ;
typedef int LPARAM ;
typedef int INT ;
typedef scalar_t__ HTHEME ;
typedef int HDC ;
typedef TYPE_4__ DRAWITEMSTRUCT ;


 scalar_t__ BDR_RAISEDOUTER ;
 scalar_t__ BDR_SUNKENOUTER ;
 int BF_ADJUST ;
 int BF_RECT ;
 int DI_NORMAL ;
 int DT_NOPREFIX ;
 int DT_SINGLELINE ;
 int DT_VCENTER ;
 int DrawEdge (int ,TYPE_3__*,scalar_t__,int) ;
 int DrawIconEx (int ,scalar_t__,int,int ,int,int,int ,int ,int ) ;
 int DrawStatusTextW (int ,TYPE_3__*,scalar_t__,int) ;
 int DrawThemeBackground (scalar_t__,int ,int,int ,TYPE_3__*,int *) ;
 int DrawThemeText (scalar_t__,int ,int,int ,scalar_t__,int,int,int ,TYPE_3__*) ;
 int GWLP_ID ;
 int GWL_STYLE ;
 int GetWindowLongPtrW (int ,int ) ;
 int GetWindowLongW (int ,int ) ;
 scalar_t__ GetWindowTheme (int ) ;
 int SBARS_SIZEGRIP ;
 int SBT_NOBORDERS ;
 int SBT_OWNERDRAW ;
 int SBT_POPOUT ;
 int SP_GRIPPERPANE ;
 int SP_PANE ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,int ) ;
 int WM_DRAWITEM ;
 int wine_dbgstr_rect (TYPE_3__*) ;

__attribute__((used)) static void
STATUSBAR_DrawPart (const STATUS_INFO *infoPtr, HDC hdc, const STATUSWINDOWPART *part, int itemID)
{
    RECT r = part->bound;
    UINT border = BDR_SUNKENOUTER;
    HTHEME theme = GetWindowTheme (infoPtr->Self);
    int themePart = SP_PANE;
    int x = 0;

    TRACE("part bound %s\n", wine_dbgstr_rect(&r));
    if (part->style & SBT_POPOUT)
        border = BDR_RAISEDOUTER;
    else if (part->style & SBT_NOBORDERS)
        border = 0;

    if (theme)
    {
        if ((GetWindowLongW (infoPtr->Self, GWL_STYLE) & SBARS_SIZEGRIP)
            && (infoPtr->simple || (itemID == (infoPtr->numParts-1))))
            themePart = SP_GRIPPERPANE;
        DrawThemeBackground(theme, hdc, themePart, 0, &r, ((void*)0));
    }
    else
        DrawEdge(hdc, &r, border, BF_RECT|BF_ADJUST);

    if (part->hIcon) {
        INT cy = r.bottom - r.top;
        DrawIconEx (hdc, r.left + 2, r.top, part->hIcon, cy, cy, 0, 0, DI_NORMAL);
        x = 2 + cy;
    }

    if (part->style & SBT_OWNERDRAW) {
 DRAWITEMSTRUCT dis;

 dis.CtlID = GetWindowLongPtrW (infoPtr->Self, GWLP_ID);
 dis.itemID = itemID;
 dis.hwndItem = infoPtr->Self;
 dis.hDC = hdc;
 dis.rcItem = r;
 dis.itemData = (ULONG_PTR)part->text;
        SendMessageW (infoPtr->Notify, WM_DRAWITEM, dis.CtlID, (LPARAM)&dis);
    } else {
        r.left += x;
        DrawStatusTextW (hdc, &r, part->text, SBT_NOBORDERS);

    }
}
