
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {int normalImageWidth; int normalImageHeight; int stateImageWidth; int stateImageHeight; scalar_t__ uIndent; int root; int uItemHeight; int bHeightSet; void* himlState; void* himlNormal; } ;
typedef TYPE_1__ TREEVIEW_INFO ;
typedef int LRESULT ;
typedef void* HIMAGELIST ;
typedef scalar_t__ BOOL ;


 int ERR (char*,int) ;
 scalar_t__ FALSE ;
 int ImageList_GetIconSize (void*,int*,int*) ;
 scalar_t__ MINIMUM_INDENT ;
 int TRACE (char*,int,void*) ;
 int TREEVIEW_Invalidate (TYPE_1__*,int *) ;
 int TREEVIEW_NaturalHeight (TYPE_1__*) ;
 int TREEVIEW_RecalculateVisibleOrder (TYPE_1__*,int *) ;
 int TREEVIEW_UpdateScrollBars (TYPE_1__*) ;
 int TREEVIEW_UpdateSubTree (TYPE_1__*,int ) ;
 scalar_t__ TRUE ;



__attribute__((used)) static LRESULT
TREEVIEW_SetImageList(TREEVIEW_INFO *infoPtr, UINT type, HIMAGELIST himlNew)
{
    HIMAGELIST himlOld = 0;
    int oldWidth = infoPtr->normalImageWidth;
    int oldHeight = infoPtr->normalImageHeight;

    TRACE("%u,%p\n", type, himlNew);

    switch (type)
    {
    case 129:
 himlOld = infoPtr->himlNormal;
 infoPtr->himlNormal = himlNew;

 if (himlNew)
     ImageList_GetIconSize(himlNew, &infoPtr->normalImageWidth,
      &infoPtr->normalImageHeight);
 else
 {
     infoPtr->normalImageWidth = 0;
     infoPtr->normalImageHeight = 0;
 }

 break;

    case 128:
 himlOld = infoPtr->himlState;
 infoPtr->himlState = himlNew;

 if (himlNew)
     ImageList_GetIconSize(himlNew, &infoPtr->stateImageWidth,
      &infoPtr->stateImageHeight);
 else
 {
     infoPtr->stateImageWidth = 0;
     infoPtr->stateImageHeight = 0;
 }

 break;

    default:
        ERR("unknown imagelist type %u\n", type);
    }

    if (oldWidth != infoPtr->normalImageWidth ||
        oldHeight != infoPtr->normalImageHeight)
    {
        BOOL bRecalcVisible = FALSE;

        if (oldHeight != infoPtr->normalImageHeight &&
            !infoPtr->bHeightSet)
        {
            infoPtr->uItemHeight = TREEVIEW_NaturalHeight(infoPtr);
            bRecalcVisible = TRUE;
        }

        if (infoPtr->normalImageWidth > MINIMUM_INDENT &&
            infoPtr->normalImageWidth != infoPtr->uIndent)
        {
            infoPtr->uIndent = infoPtr->normalImageWidth;
            bRecalcVisible = TRUE;
        }

        if (bRecalcVisible)
            TREEVIEW_RecalculateVisibleOrder(infoPtr, ((void*)0));

       TREEVIEW_UpdateSubTree(infoPtr, infoPtr->root);
       TREEVIEW_UpdateScrollBars(infoPtr);
    }

    TREEVIEW_Invalidate(infoPtr, ((void*)0));

    return (LRESULT)himlOld;
}
