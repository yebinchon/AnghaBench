
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ WPARAM ;
typedef int UINT ;
struct TYPE_13__ {size_t uNumItem; size_t iHotDivider; int hwndSelf; TYPE_3__* items; } ;
struct TYPE_10__ {int left; int right; } ;
struct TYPE_12__ {TYPE_1__ rect; } ;
struct TYPE_11__ {size_t x; scalar_t__ y; } ;
typedef scalar_t__ SHORT ;
typedef int RECT ;
typedef TYPE_2__ POINT ;
typedef size_t LRESULT ;
typedef scalar_t__ LPARAM ;
typedef size_t INT ;
typedef TYPE_3__ HEADER_ITEM ;
typedef TYPE_4__ HEADER_INFO ;


 int FALSE ;
 int HEADER_GetHotDividerRect (TYPE_4__*,int *) ;
 int HEADER_InternalHitTest (TYPE_4__*,TYPE_2__*,int*,size_t*) ;
 size_t HEADER_NextItem (TYPE_4__*,size_t) ;
 int HHT_NOWHERE ;
 int HHT_TOLEFT ;
 int HHT_TORIGHT ;
 int InvalidateRect (int ,int *,int ) ;
 scalar_t__ LOWORD (scalar_t__) ;

__attribute__((used)) static LRESULT
HEADER_SetHotDivider(HEADER_INFO *infoPtr, WPARAM wParam, LPARAM lParam)
{
    INT iDivider;
    RECT r;

    if (wParam)
    {
        POINT pt;
        UINT flags;
        pt.x = (INT)(SHORT)LOWORD(lParam);
        pt.y = 0;
        HEADER_InternalHitTest (infoPtr, &pt, &flags, &iDivider);

        if (flags & HHT_TOLEFT)
            iDivider = 0;
        else if (flags & HHT_NOWHERE || flags & HHT_TORIGHT)
            iDivider = infoPtr->uNumItem;
        else
        {
            HEADER_ITEM *lpItem = &infoPtr->items[iDivider];
            if (pt.x > (lpItem->rect.left+lpItem->rect.right)/2)
                iDivider = HEADER_NextItem(infoPtr, iDivider);
        }
    }
    else
        iDivider = (INT)lParam;


    if (iDivider<-1 || iDivider>(int)infoPtr->uNumItem)
        return iDivider;

    if (iDivider != infoPtr->iHotDivider)
    {
        if (infoPtr->iHotDivider != -1)
        {
            HEADER_GetHotDividerRect(infoPtr, &r);
            InvalidateRect(infoPtr->hwndSelf, &r, FALSE);
        }
        infoPtr->iHotDivider = iDivider;
        if (iDivider != -1)
        {
            HEADER_GetHotDividerRect(infoPtr, &r);
            InvalidateRect(infoPtr->hwndSelf, &r, FALSE);
        }
    }
    return iDivider;
}
