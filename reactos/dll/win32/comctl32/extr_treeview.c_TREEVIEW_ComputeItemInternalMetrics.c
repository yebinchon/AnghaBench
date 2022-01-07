
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {int dwStyle; int uIndent; scalar_t__ normalImageWidth; int stateImageWidth; scalar_t__ scrollX; } ;
struct TYPE_5__ {int iLevel; scalar_t__ imageOffset; scalar_t__ textOffset; int state; scalar_t__ stateOffset; scalar_t__ linesOffset; } ;
typedef TYPE_1__ TREEVIEW_ITEM ;
typedef TYPE_2__ TREEVIEW_INFO ;
typedef int BOOL ;


 scalar_t__ STATEIMAGEINDEX (int ) ;
 int TVS_HASBUTTONS ;
 int TVS_HASLINES ;
 int TVS_LINESATROOT ;

__attribute__((used)) static VOID
TREEVIEW_ComputeItemInternalMetrics(const TREEVIEW_INFO *infoPtr, TREEVIEW_ITEM *item)
{

    BOOL lar = ((infoPtr->dwStyle & (TVS_LINESATROOT|TVS_HASLINES|TVS_HASBUTTONS))
  > TVS_LINESATROOT);

    item->linesOffset = infoPtr->uIndent * (lar ? item->iLevel : item->iLevel - 1)
 - infoPtr->scrollX;
    item->stateOffset = item->linesOffset + infoPtr->uIndent;
    item->imageOffset = item->stateOffset
 + (STATEIMAGEINDEX(item->state) ? infoPtr->stateImageWidth : 0);
    item->textOffset = item->imageOffset + infoPtr->normalImageWidth;
}
