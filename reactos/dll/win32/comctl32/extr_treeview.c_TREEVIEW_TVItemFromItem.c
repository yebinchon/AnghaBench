
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
struct TYPE_9__ {int bNtfUnicode; } ;
struct TYPE_8__ {int * pszText; scalar_t__ cchTextMax; int lParam; int cChildren; int iSelectedImage; int iImage; int state; } ;
struct TYPE_7__ {int mask; int * pszText; scalar_t__ cchTextMax; int lParam; int cChildren; int iSelectedImage; int iImage; scalar_t__ stateMask; int state; TYPE_2__* hItem; } ;
typedef TYPE_1__ TVITEMW ;
typedef TYPE_2__ TREEVIEW_ITEM ;
typedef TYPE_3__ TREEVIEW_INFO ;
typedef int * LPSTR ;


 int CP_ACP ;
 int TVIF_TEXT ;
 scalar_t__ WideCharToMultiByte (int ,int ,int *,int,int *,scalar_t__,int *,int *) ;
 int * heap_alloc (scalar_t__) ;

__attribute__((used)) static VOID
TREEVIEW_TVItemFromItem(const TREEVIEW_INFO *infoPtr, UINT mask, TVITEMW *tvItem, TREEVIEW_ITEM *item)
{
    tvItem->mask = mask;
    tvItem->hItem = item;
    tvItem->state = item->state;
    tvItem->stateMask = 0;
    tvItem->iImage = item->iImage;
    tvItem->iSelectedImage = item->iSelectedImage;
    tvItem->cChildren = item->cChildren;
    tvItem->lParam = item->lParam;

    if(mask & TVIF_TEXT)
    {
        if (!infoPtr->bNtfUnicode)
        {
            tvItem->cchTextMax = WideCharToMultiByte( CP_ACP, 0, item->pszText, -1, ((void*)0), 0, ((void*)0), ((void*)0) );
            tvItem->pszText = heap_alloc (tvItem->cchTextMax);
            WideCharToMultiByte( CP_ACP, 0, item->pszText, -1, (LPSTR)tvItem->pszText, tvItem->cchTextMax, 0, 0 );
 }
        else
        {
            tvItem->cchTextMax = item->cchTextMax;
            tvItem->pszText = item->pszText;
        }
    }
    else
    {
        tvItem->cchTextMax = 0;
        tvItem->pszText = ((void*)0);
    }
}
