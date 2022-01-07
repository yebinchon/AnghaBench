
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwStyle; void* nWidth; void* nHeight; int hwndSelf; } ;
typedef TYPE_1__ PAGER_INFO ;
typedef int LRESULT ;
typedef void* INT ;


 int PAGER_RecalcSize (TYPE_1__*) ;
 int PGS_HORZ ;
 int TRACE (char*,int ,void*,void*) ;

__attribute__((used)) static LRESULT
PAGER_Size (PAGER_INFO* infoPtr, INT type, INT x, INT y)
{


    TRACE("[%p] %d,%d\n", infoPtr->hwndSelf, x, y);

    if (infoPtr->dwStyle & PGS_HORZ)
        infoPtr->nHeight = y;
    else
        infoPtr->nWidth = x;

    return PAGER_RecalcSize(infoPtr);
}
