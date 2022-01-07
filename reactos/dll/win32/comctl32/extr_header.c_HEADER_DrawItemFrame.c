
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dwStyle; int hwndSelf; } ;
struct TYPE_5__ {scalar_t__ bDown; } ;
typedef int RECT ;
typedef TYPE_1__ HEADER_ITEM ;
typedef TYPE_2__ HEADER_INFO ;
typedef int HDC ;


 int BDR_RAISEDOUTER ;
 int BF_ADJUST ;
 int BF_BOTTOM ;
 int BF_FLAT ;
 int BF_RECT ;
 int BF_RIGHT ;
 int BF_SOFT ;
 int DrawEdge (int ,int *,int ,int) ;
 int EDGE_ETCHED ;
 int EDGE_RAISED ;
 scalar_t__ GetWindowTheme (int ) ;
 int HDS_BUTTONS ;
 int HDS_FLAT ;

__attribute__((used)) static void
HEADER_DrawItemFrame(HEADER_INFO *infoPtr, HDC hdc, RECT *r, const HEADER_ITEM *item)
{
    if (GetWindowTheme(infoPtr->hwndSelf)) return;

    if (!(infoPtr->dwStyle & HDS_FLAT))
    {
        if (infoPtr->dwStyle & HDS_BUTTONS) {
            if (item->bDown)
                DrawEdge (hdc, r, BDR_RAISEDOUTER, BF_RECT | BF_FLAT | BF_ADJUST);
            else
                DrawEdge (hdc, r, EDGE_RAISED, BF_RECT | BF_SOFT | BF_ADJUST);
        }
        else
            DrawEdge (hdc, r, EDGE_ETCHED, BF_BOTTOM | BF_RIGHT | BF_ADJUST);
    }
}
