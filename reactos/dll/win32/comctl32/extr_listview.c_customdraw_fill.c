
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ nHotItem; int clrText; int clrTextBk; } ;
struct TYPE_11__ {scalar_t__ iItem; int state; int lParam; int iSubItem; } ;
struct TYPE_9__ {scalar_t__ dwItemSpec; int lItemlParam; int uItemState; int rc; int hdc; } ;
struct TYPE_10__ {TYPE_1__ nmcd; int iSubItem; int clrText; int clrTextBk; } ;
typedef int RECT ;
typedef TYPE_2__ NMLVCUSTOMDRAW ;
typedef TYPE_3__ LVITEMW ;
typedef TYPE_4__ LISTVIEW_INFO ;
typedef int HDC ;


 int CDIS_FOCUS ;
 int CDIS_HOT ;
 int CDIS_SELECTED ;
 int LVIS_FOCUSED ;
 int LVIS_SELECTED ;
 int ZeroMemory (TYPE_2__*,int) ;

__attribute__((used)) static void customdraw_fill(NMLVCUSTOMDRAW *lpnmlvcd, const LISTVIEW_INFO *infoPtr, HDC hdc,
       const RECT *rcBounds, const LVITEMW *lplvItem)
{
    ZeroMemory(lpnmlvcd, sizeof(NMLVCUSTOMDRAW));
    lpnmlvcd->nmcd.hdc = hdc;
    lpnmlvcd->nmcd.rc = *rcBounds;
    lpnmlvcd->clrTextBk = infoPtr->clrTextBk;
    lpnmlvcd->clrText = infoPtr->clrText;
    if (!lplvItem) return;
    lpnmlvcd->nmcd.dwItemSpec = lplvItem->iItem + 1;
    lpnmlvcd->iSubItem = lplvItem->iSubItem;
    if (lplvItem->state & LVIS_SELECTED) lpnmlvcd->nmcd.uItemState |= CDIS_SELECTED;
    if (lplvItem->state & LVIS_FOCUSED) lpnmlvcd->nmcd.uItemState |= CDIS_FOCUS;
    if (lplvItem->iItem == infoPtr->nHotItem) lpnmlvcd->nmcd.uItemState |= CDIS_HOT;
    lpnmlvcd->nmcd.lItemlParam = lplvItem->lParam;
}
