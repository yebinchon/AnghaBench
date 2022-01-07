
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_10__ {TYPE_2__* items; scalar_t__ uNumItem; } ;
struct TYPE_9__ {int pszText; int iOrder; int iImage; int lParam; int cxy; int fmt; int hbm; } ;
struct TYPE_8__ {int mask; int cchTextMax; scalar_t__ pszText; int iOrder; int iImage; int lParam; int cxy; int fmt; int hbm; } ;
typedef int LRESULT ;
typedef int LPSTR ;
typedef TYPE_1__* LPHDITEMW ;
typedef size_t INT ;
typedef TYPE_2__ HEADER_ITEM ;
typedef TYPE_3__ HEADER_INFO ;
typedef scalar_t__ BOOL ;


 int FALSE ;
 int HDI_BITMAP ;
 int HDI_COMCTL32_4_0_FIELDS ;
 int HDI_FORMAT ;
 int HDI_IMAGE ;
 int HDI_LPARAM ;
 int HDI_ORDER ;
 int HDI_TEXT ;
 int HDI_UNKNOWN_FIELDS ;
 int HDI_WIDTH ;
 int HEADER_FreeCallbackItems (TYPE_2__*) ;
 int HEADER_PrepareCallbackItems (TYPE_3__ const*,size_t,int) ;
 int Str_GetPtrW (int ,scalar_t__,int ) ;
 int Str_GetPtrWtoA (int ,int ,int ) ;
 int TRACE (char*,int) ;
 int TRUE ;

__attribute__((used)) static LRESULT
HEADER_GetItemT (const HEADER_INFO *infoPtr, INT nItem, LPHDITEMW phdi, BOOL bUnicode)
{
    HEADER_ITEM *lpItem;
    UINT mask;

    if (!phdi)
 return FALSE;

    TRACE("[nItem=%d]\n", nItem);

    mask = phdi->mask;
    if (mask == 0)
 return TRUE;

    if ((nItem < 0) || (nItem >= (INT)infoPtr->uNumItem))
        return FALSE;

    if (mask & HDI_UNKNOWN_FIELDS)
    {
        TRACE("mask %x contains unknown fields. Using only comctl32 4.0 fields\n", mask);
        mask &= HDI_COMCTL32_4_0_FIELDS;
    }

    lpItem = &infoPtr->items[nItem];
    HEADER_PrepareCallbackItems(infoPtr, nItem, mask);

    if (mask & HDI_BITMAP)
        phdi->hbm = lpItem->hbm;

    if (mask & HDI_FORMAT)
        phdi->fmt = lpItem->fmt;

    if (mask & HDI_WIDTH)
        phdi->cxy = lpItem->cxy;

    if (mask & HDI_LPARAM)
        phdi->lParam = lpItem->lParam;

    if (mask & HDI_IMAGE)
        phdi->iImage = lpItem->iImage;

    if (mask & HDI_ORDER)
        phdi->iOrder = lpItem->iOrder;

    if (mask & HDI_TEXT)
    {
        if (bUnicode)
            Str_GetPtrW (lpItem->pszText, phdi->pszText, phdi->cchTextMax);
        else
            Str_GetPtrWtoA (lpItem->pszText, (LPSTR)phdi->pszText, phdi->cchTextMax);
    }

    HEADER_FreeCallbackItems(lpItem);
    return TRUE;
}
