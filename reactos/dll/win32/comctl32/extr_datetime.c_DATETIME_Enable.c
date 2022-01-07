
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hwndSelf; int dwStyle; } ;
typedef int LRESULT ;
typedef TYPE_1__ DATETIME_INFO ;
typedef scalar_t__ BOOL ;


 int InvalidateRect (int ,int *,int ) ;
 int TRACE (char*,TYPE_1__*,char*) ;
 int TRUE ;
 int WS_DISABLED ;

__attribute__((used)) static LRESULT
DATETIME_Enable (DATETIME_INFO *infoPtr, BOOL bEnable)
{
    TRACE("%p %s\n", infoPtr, bEnable ? "TRUE" : "FALSE");
    if (bEnable)
        infoPtr->dwStyle &= ~WS_DISABLED;
    else
        infoPtr->dwStyle |= WS_DISABLED;

    InvalidateRect(infoPtr->hwndSelf, ((void*)0), TRUE);

    return 0;
}
