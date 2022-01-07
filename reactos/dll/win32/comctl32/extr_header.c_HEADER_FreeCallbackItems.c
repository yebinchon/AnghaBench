
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int callbackMask; int iImage; int * pszText; } ;
typedef TYPE_1__ HEADER_ITEM ;


 int HDI_IMAGE ;
 int HDI_TEXT ;
 int I_IMAGECALLBACK ;
 int heap_free (int *) ;

__attribute__((used)) static void
HEADER_FreeCallbackItems(HEADER_ITEM *lpItem)
{
    if (lpItem->callbackMask&HDI_TEXT)
    {
        heap_free(lpItem->pszText);
        lpItem->pszText = ((void*)0);
    }

    if (lpItem->callbackMask&HDI_IMAGE)
        lpItem->iImage = I_IMAGECALLBACK;
}
