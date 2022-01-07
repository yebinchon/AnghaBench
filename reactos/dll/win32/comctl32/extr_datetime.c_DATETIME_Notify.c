
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int wDayOfWeek; int wDay; int wMonth; int wYear; } ;
struct TYPE_12__ {scalar_t__ hUpdown; int pendingUpdown; int hwndSelf; int hwndCheckbut; TYPE_1__ date; int hMonthCal; int dateValid; } ;
struct TYPE_11__ {scalar_t__ code; scalar_t__ hwndFrom; } ;
struct TYPE_10__ {int iDelta; } ;
typedef TYPE_2__ NM_UPDOWN ;
typedef TYPE_3__ NMHDR ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef TYPE_4__ DATETIME_INFO ;


 int BM_SETCHECK ;
 int BST_CHECKED ;
 int DATETIME_SendDateTimeChangeNotify (TYPE_4__*) ;
 int DATETIME_SendSimpleNotify (TYPE_4__*,int ) ;
 int DTN_CLOSEUP ;
 int InvalidateRect (int ,int *,int ) ;
 int MCM_GETCURSEL ;
 scalar_t__ MCN_SELECT ;
 int SW_HIDE ;
 int SendMessageW (int ,int ,int ,int ) ;
 int ShowWindow (int ,int ) ;
 int TRACE (char*,scalar_t__,...) ;
 int TRUE ;
 scalar_t__ UDN_DELTAPOS ;

__attribute__((used)) static LRESULT
DATETIME_Notify (DATETIME_INFO *infoPtr, const NMHDR *lpnmh)
{
    TRACE ("Got notification %x from %p\n", lpnmh->code, lpnmh->hwndFrom);
    TRACE ("info: %p %p %p\n", infoPtr->hwndSelf, infoPtr->hMonthCal, infoPtr->hUpdown);

    if (lpnmh->code == MCN_SELECT) {
        ShowWindow(infoPtr->hMonthCal, SW_HIDE);
        infoPtr->dateValid = TRUE;
        SendMessageW (infoPtr->hMonthCal, MCM_GETCURSEL, 0, (LPARAM)&infoPtr->date);
        TRACE("got from calendar %04d/%02d/%02d day of week %d\n",
        infoPtr->date.wYear, infoPtr->date.wMonth, infoPtr->date.wDay, infoPtr->date.wDayOfWeek);
        SendMessageW (infoPtr->hwndCheckbut, BM_SETCHECK, BST_CHECKED, 0);
        InvalidateRect(infoPtr->hwndSelf, ((void*)0), TRUE);
        DATETIME_SendDateTimeChangeNotify (infoPtr);
        DATETIME_SendSimpleNotify(infoPtr, DTN_CLOSEUP);
    }
    if ((lpnmh->hwndFrom == infoPtr->hUpdown) && (lpnmh->code == UDN_DELTAPOS)) {
        const NM_UPDOWN *lpnmud = (const NM_UPDOWN*)lpnmh;
        TRACE("Delta pos %d\n", lpnmud->iDelta);
        infoPtr->pendingUpdown = lpnmud->iDelta;
    }
    return 0;
}
