
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nPos; int hwndSelf; } ;
typedef TYPE_1__ PAGER_INFO ;
typedef int LRESULT ;
typedef scalar_t__ INT ;
typedef int BOOL ;


 scalar_t__ PAGER_GetScrollRange (TYPE_1__*,int ) ;
 int PAGER_PositionChildWnd (TYPE_1__*) ;
 int PAGER_UpdateBtns (TYPE_1__*,scalar_t__,int) ;
 int TRACE (char*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static LRESULT
PAGER_SetPos(PAGER_INFO* infoPtr, INT newPos, BOOL fromBtnPress, BOOL calc_size)
{
    INT scrollRange = PAGER_GetScrollRange(infoPtr, calc_size);
    INT oldPos = infoPtr->nPos;

    if ((scrollRange <= 0) || (newPos < 0))
        infoPtr->nPos = 0;
    else if (newPos > scrollRange)
        infoPtr->nPos = scrollRange;
    else
        infoPtr->nPos = newPos;

    TRACE("[%p] pos=%d, oldpos=%d\n", infoPtr->hwndSelf, infoPtr->nPos, oldPos);

    if (infoPtr->nPos != oldPos)
    {

        PAGER_UpdateBtns(infoPtr, scrollRange, !fromBtnPress);
        PAGER_PositionChildWnd(infoPtr);
    }

    return 0;
}
