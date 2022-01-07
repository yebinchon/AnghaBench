
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ uNumItem; size_t* order; int hwndSelf; TYPE_1__* items; } ;
struct TYPE_5__ {size_t iOrder; } ;
typedef int LRESULT ;
typedef size_t INT ;
typedef TYPE_1__ HEADER_ITEM ;
typedef TYPE_2__ HEADER_INFO ;


 int FALSE ;
 int HEADER_SetItemBounds (TYPE_2__*) ;
 int InvalidateRect (int ,int *,int ) ;
 int TRACE (char*,...) ;
 scalar_t__ TRACE_ON (int ) ;
 int TRUE ;
 void* get_nextvalue (size_t*,size_t,size_t) ;
 size_t has_duplicate (size_t*,size_t,size_t const) ;
 int header ;

__attribute__((used)) static LRESULT
HEADER_SetOrderArray(HEADER_INFO *infoPtr, INT size, const INT *order)
{
    HEADER_ITEM *lpItem;
    INT i;

    if ((UINT)size != infoPtr->uNumItem)
      return FALSE;

    if (TRACE_ON(header))
    {
        TRACE("count=%d, order array={", size);
        for (i = 0; i < size; i++)
            TRACE("%d%c", order[i], i != size-1 ? ',' : '}');
        TRACE("\n");
    }

    for (i=0; i<size; i++)
    {
        if (order[i] >= size || order[i] < 0)



           infoPtr->order[i] = get_nextvalue(infoPtr->order, i, size);
        else
        {
           INT j, dup;

           infoPtr->order[i] = order[i];
           j = i;

           while ((dup = has_duplicate(infoPtr->order, j, order[j])) != -1)
           {
               INT next;

               next = get_nextvalue(infoPtr->order, j, size);
               infoPtr->order[dup] = next;
               j--;
           }
        }
    }

    for (i=0; i<size; i++)
    {
        lpItem = &infoPtr->items[infoPtr->order[i]];
        lpItem->iOrder = i;
    }
    HEADER_SetItemBounds(infoPtr);
    InvalidateRect(infoPtr->hwndSelf, ((void*)0), FALSE);
    return TRUE;
}
