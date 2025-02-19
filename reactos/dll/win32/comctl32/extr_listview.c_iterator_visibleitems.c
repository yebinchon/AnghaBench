
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_25__ {scalar_t__ lower; scalar_t__ upper; } ;
struct TYPE_24__ {int nSpecial; int nItem; scalar_t__ ranges; TYPE_5__ range; } ;
struct TYPE_23__ {scalar_t__ uView; scalar_t__ nItemHeight; scalar_t__ nItemWidth; } ;
struct TYPE_22__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_21__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ POINT ;
typedef TYPE_3__ LISTVIEW_INFO ;
typedef TYPE_4__ ITERATOR ;
typedef scalar_t__ INT ;
typedef int HDC ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ GetClipBox (int ,TYPE_1__*) ;
 int LISTVIEW_GetItemBox (TYPE_3__ const*,int,TYPE_1__*) ;
 int LISTVIEW_GetItemOrigin (TYPE_3__ const*,int ,TYPE_2__*) ;
 int LISTVIEW_GetOrigin (TYPE_3__ const*,TYPE_2__*) ;
 scalar_t__ LV_VIEW_DETAILS ;
 scalar_t__ NULLREGION ;
 int RectVisible (int ,TYPE_1__*) ;
 scalar_t__ SIMPLEREGION ;
 int TRACE (char*) ;
 int TRUE ;
 int iterator_empty (TYPE_4__*) ;
 int iterator_frameditems (TYPE_4__*,TYPE_3__ const*,TYPE_1__*) ;
 scalar_t__ iterator_next (TYPE_4__*) ;
 int ranges_add (scalar_t__,TYPE_5__) ;
 scalar_t__ ranges_create (int) ;
 int ranges_delitem (scalar_t__,int ) ;
 int ranges_destroy (scalar_t__) ;

__attribute__((used)) static BOOL iterator_visibleitems(ITERATOR *i, const LISTVIEW_INFO *infoPtr, HDC hdc)
{
    POINT Origin, Position;
    RECT rcItem, rcClip;
    INT rgntype;

    rgntype = GetClipBox(hdc, &rcClip);
    if (rgntype == NULLREGION)
    {
        iterator_empty(i);
        return TRUE;
    }
    if (!iterator_frameditems(i, infoPtr, &rcClip)) return FALSE;
    if (rgntype == SIMPLEREGION) return TRUE;


    if (i->nSpecial != -1)
    {
 LISTVIEW_GetItemBox(infoPtr, i->nSpecial, &rcItem);
 if (!RectVisible(hdc, &rcItem)) i->nSpecial = -1;
    }


    LISTVIEW_GetOrigin(infoPtr, &Origin);
    TRACE("building visible range:\n");
    if (!i->ranges && i->range.lower < i->range.upper)
    {
 if (!(i->ranges = ranges_create(50))) return TRUE;
 if (!ranges_add(i->ranges, i->range))
        {
     ranges_destroy(i->ranges);
     i->ranges = 0;
     return TRUE;
        }
    }


    while(iterator_next(i))
    {
 LISTVIEW_GetItemOrigin(infoPtr, i->nItem, &Position);
 rcItem.left = (infoPtr->uView == LV_VIEW_DETAILS) ? Origin.x : Position.x + Origin.x;
 rcItem.top = Position.y + Origin.y;
 rcItem.right = rcItem.left + infoPtr->nItemWidth;
 rcItem.bottom = rcItem.top + infoPtr->nItemHeight;
 if (!RectVisible(hdc, &rcItem))
     ranges_delitem(i->ranges, i->nItem);
    }

    TRACE("done\n");

    return TRUE;
}
