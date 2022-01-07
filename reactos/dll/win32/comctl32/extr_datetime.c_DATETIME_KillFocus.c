
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hwndSelf; scalar_t__ haveFocus; } ;
typedef int LRESULT ;
typedef int HWND ;
typedef TYPE_1__ DATETIME_INFO ;


 int DATETIME_SendSimpleNotify (TYPE_1__*,int ) ;
 int DATETIME_SetSelectedField (TYPE_1__*,int) ;
 int InvalidateRect (int ,int *,int ) ;
 int NM_KILLFOCUS ;
 int TRACE (char*,int ) ;
 int TRUE ;

__attribute__((used)) static LRESULT
DATETIME_KillFocus (DATETIME_INFO *infoPtr, HWND lostFocus)
{
    TRACE("lost focus to %p\n", lostFocus);

    if (infoPtr->haveFocus) {
 DATETIME_SendSimpleNotify (infoPtr, NM_KILLFOCUS);
 infoPtr->haveFocus = 0;
        DATETIME_SetSelectedField (infoPtr, -1);
    }

    InvalidateRect (infoPtr->hwndSelf, ((void*)0), TRUE);

    return 0;
}
