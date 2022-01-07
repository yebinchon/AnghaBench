
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int code; int idFrom; int hwndFrom; } ;
struct TYPE_4__ {scalar_t__ simple; int Self; int Notify; } ;
typedef TYPE_1__ STATUS_INFO ;
typedef TYPE_2__ NMHDR ;
typedef int LPARAM ;
typedef scalar_t__ BOOL ;


 int FALSE ;
 int GWLP_ID ;
 int GetWindowLongPtrW (int ,int ) ;
 int InvalidateRect (int ,int *,int ) ;
 int SBN_SIMPLEMODECHANGE ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,scalar_t__) ;
 scalar_t__ TRUE ;
 int WM_NOTIFY ;

__attribute__((used)) static BOOL
STATUSBAR_Simple (STATUS_INFO *infoPtr, BOOL simple)
{
    NMHDR nmhdr;

    TRACE("(simple=%d)\n", simple);
    if (infoPtr->simple == simple)
 return TRUE;

    infoPtr->simple = simple;


    nmhdr.hwndFrom = infoPtr->Self;
    nmhdr.idFrom = GetWindowLongPtrW (infoPtr->Self, GWLP_ID);
    nmhdr.code = SBN_SIMPLEMODECHANGE;
    SendMessageW (infoPtr->Notify, WM_NOTIFY, 0, (LPARAM)&nmhdr);
    InvalidateRect(infoPtr->Self, ((void*)0), FALSE);
    return TRUE;
}
