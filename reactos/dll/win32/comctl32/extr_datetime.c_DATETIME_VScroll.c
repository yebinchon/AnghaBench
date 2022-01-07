
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_5__ {int select; scalar_t__ pendingUpdown; int hwndSelf; int haveFocus; } ;
typedef scalar_t__ SHORT ;
typedef int LRESULT ;
typedef TYPE_1__ DATETIME_INFO ;


 int DATETIME_IncreaseField (TYPE_1__*,int,int) ;
 int DATETIME_SendDateTimeChangeNotify (TYPE_1__*) ;
 int DTHT_DATEFIELD ;
 int InvalidateRect (int ,int *,int ) ;
 scalar_t__ LOWORD (int ) ;
 scalar_t__ SB_THUMBPOSITION ;
 int TRUE ;

__attribute__((used)) static LRESULT
DATETIME_VScroll (DATETIME_INFO *infoPtr, WORD wScroll)
{
    int fieldNum = infoPtr->select & DTHT_DATEFIELD;

    if ((SHORT)LOWORD(wScroll) != SB_THUMBPOSITION) return 0;
    if (!(infoPtr->haveFocus)) return 0;
    if ((fieldNum==0) && (infoPtr->select)) return 0;

    if (infoPtr->pendingUpdown >= 0) {
 DATETIME_IncreaseField (infoPtr, fieldNum, 1);
 DATETIME_SendDateTimeChangeNotify (infoPtr);
    }
    else {
 DATETIME_IncreaseField (infoPtr, fieldNum, -1);
 DATETIME_SendDateTimeChangeNotify (infoPtr);
    }

    InvalidateRect(infoPtr->hwndSelf, ((void*)0), TRUE);

    return 0;
}
