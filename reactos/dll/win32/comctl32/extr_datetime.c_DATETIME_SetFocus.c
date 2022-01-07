
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ hMonthCal; scalar_t__ haveFocus; int hwndSelf; int bDropdownEnabled; } ;
typedef int LRESULT ;
typedef scalar_t__ HWND ;
typedef TYPE_1__ DATETIME_INFO ;


 int DATETIME_SendSimpleNotify (TYPE_1__*,int ) ;
 scalar_t__ DTHT_GOTFOCUS ;
 int DTN_CLOSEUP ;
 int FALSE ;
 int InvalidateRect (int ,int *,int ) ;
 scalar_t__ IsWindowVisible (scalar_t__) ;
 int NM_SETFOCUS ;
 int SW_HIDE ;
 int ShowWindow (scalar_t__,int ) ;
 int TRACE (char*,scalar_t__) ;

__attribute__((used)) static LRESULT
DATETIME_SetFocus (DATETIME_INFO *infoPtr, HWND lostFocus)
{
    TRACE("got focus from %p\n", lostFocus);


    if (infoPtr->hMonthCal && (lostFocus == infoPtr->hMonthCal) &&
        IsWindowVisible(infoPtr->hMonthCal))
    {
        ShowWindow(infoPtr->hMonthCal, SW_HIDE);
        DATETIME_SendSimpleNotify(infoPtr, DTN_CLOSEUP);



        infoPtr->bDropdownEnabled = FALSE;
        return 0;
    }

    if (infoPtr->haveFocus == 0) {
 DATETIME_SendSimpleNotify (infoPtr, NM_SETFOCUS);
 infoPtr->haveFocus = DTHT_GOTFOCUS;
    }

    InvalidateRect(infoPtr->hwndSelf, ((void*)0), FALSE);

    return 0;
}
