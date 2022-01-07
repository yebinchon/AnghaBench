
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nPos; scalar_t__ hwndChild; int hwndSelf; } ;
typedef TYPE_1__ PAGER_INFO ;
typedef int LRESULT ;
typedef scalar_t__ INT ;


 int FALSE ;
 scalar_t__ PAGER_GetScrollRange (TYPE_1__*,int ) ;
 int PAGER_PositionChildWnd (TYPE_1__*) ;
 int PAGER_SetPos (TYPE_1__*,int ,int ,int ) ;
 int TRACE (char*,int ) ;
 int TRUE ;

__attribute__((used)) static LRESULT
PAGER_RecalcSize(PAGER_INFO *infoPtr)
{
    TRACE("[%p]\n", infoPtr->hwndSelf);

    if (infoPtr->hwndChild)
    {
        INT scrollRange = PAGER_GetScrollRange(infoPtr, TRUE);

        if (scrollRange <= 0)
        {
            infoPtr->nPos = -1;
            PAGER_SetPos(infoPtr, 0, FALSE, TRUE);
        }
        else
            PAGER_PositionChildWnd(infoPtr);
    }

    return 1;
}
