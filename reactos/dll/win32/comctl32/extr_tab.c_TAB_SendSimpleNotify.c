
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int idFrom; int code; int hwndFrom; } ;
struct TYPE_4__ {int hwndNotify; int hwnd; } ;
typedef TYPE_1__ TAB_INFO ;
typedef TYPE_2__ NMHDR ;
typedef int LPARAM ;
typedef int BOOL ;


 int GWLP_ID ;
 int GetWindowLongPtrW (int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int WM_NOTIFY ;

__attribute__((used)) static BOOL
TAB_SendSimpleNotify (const TAB_INFO *infoPtr, UINT code)
{
    NMHDR nmhdr;

    nmhdr.hwndFrom = infoPtr->hwnd;
    nmhdr.idFrom = GetWindowLongPtrW(infoPtr->hwnd, GWLP_ID);
    nmhdr.code = code;

    return (BOOL) SendMessageW (infoPtr->hwndNotify, WM_NOTIFY,
            nmhdr.idFrom, (LPARAM) &nmhdr);
}
