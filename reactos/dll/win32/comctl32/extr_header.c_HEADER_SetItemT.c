
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int mask; scalar_t__ iOrder; } ;
struct TYPE_13__ {scalar_t__ uNumItem; int hwndSelf; int * items; } ;
typedef int LRESULT ;
typedef size_t INT ;
typedef int HEADER_ITEM ;
typedef TYPE_1__ HEADER_INFO ;
typedef TYPE_2__ HDITEMW ;
typedef int BOOL ;


 int FALSE ;
 int HDI_ORDER ;
 int HDN_ITEMCHANGEDW ;
 int HDN_ITEMCHANGINGW ;
 int HEADER_ChangeItemOrder (TYPE_1__*,size_t,scalar_t__) ;
 int HEADER_CopyHDItemForNotify (TYPE_1__*,TYPE_2__*,TYPE_2__ const*,int ,void**) ;
 scalar_t__ HEADER_SendNotifyWithHDItemT (TYPE_1__*,int ,size_t,TYPE_2__*) ;
 int HEADER_SetItemBounds (TYPE_1__*) ;
 int HEADER_StoreHDItemInHeader (int *,int,TYPE_2__ const*,int ) ;
 int InvalidateRect (int ,int *,int ) ;
 int TRACE (char*,size_t) ;
 int TRUE ;
 int heap_free (void*) ;

__attribute__((used)) static LRESULT
HEADER_SetItemT (HEADER_INFO *infoPtr, INT nItem, const HDITEMW *phdi, BOOL bUnicode)
{
    HEADER_ITEM *lpItem;
    HDITEMW hdNotify;
    void *pvScratch;

    if (phdi == ((void*)0))
 return FALSE;
    if ((nItem < 0) || (nItem >= (INT)infoPtr->uNumItem))
        return FALSE;

    TRACE("[nItem=%d]\n", nItem);

    HEADER_CopyHDItemForNotify(infoPtr, &hdNotify, phdi, bUnicode, &pvScratch);
    if (HEADER_SendNotifyWithHDItemT(infoPtr, HDN_ITEMCHANGINGW, nItem, &hdNotify))
    {
        heap_free(pvScratch);
        return FALSE;
    }

    lpItem = &infoPtr->items[nItem];
    HEADER_StoreHDItemInHeader(lpItem, phdi->mask, phdi, bUnicode);

    if (phdi->mask & HDI_ORDER)
        if (phdi->iOrder >= 0 && phdi->iOrder < infoPtr->uNumItem)
            HEADER_ChangeItemOrder(infoPtr, nItem, phdi->iOrder);

    HEADER_SendNotifyWithHDItemT(infoPtr, HDN_ITEMCHANGEDW, nItem, &hdNotify);

    HEADER_SetItemBounds (infoPtr);

    InvalidateRect(infoPtr->hwndSelf, ((void*)0), FALSE);

    heap_free(pvScratch);
    return TRUE;
}
