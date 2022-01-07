
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nButtonSize; int hwndSelf; } ;
typedef TYPE_1__ PAGER_INFO ;
typedef int INT ;


 int PAGER_RecalcSize (TYPE_1__*) ;
 int TRACE (char*,int ,int ) ;

__attribute__((used)) static INT
PAGER_SetButtonSize (PAGER_INFO* infoPtr, INT iButtonSize)
{
    INT nTemp = infoPtr->nButtonSize;

    infoPtr->nButtonSize = iButtonSize;
    TRACE("[%p] %d\n", infoPtr->hwndSelf, infoPtr->nButtonSize);

    PAGER_RecalcSize(infoPtr);

    return nTemp;
}
