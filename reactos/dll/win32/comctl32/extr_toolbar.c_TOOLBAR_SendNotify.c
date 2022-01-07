
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int idFrom; int code; int hwndFrom; } ;
struct TYPE_5__ {int hwndNotify; scalar_t__ bUnicode; int hwndSelf; } ;
typedef TYPE_1__ TOOLBAR_INFO ;
typedef TYPE_2__ NMHDR ;
typedef int LPARAM ;
typedef int INT ;


 int GetDlgCtrlID (int ) ;
 int IsWindow (int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,int ,int ,char*) ;
 int WM_NOTIFY ;

__attribute__((used)) static INT
TOOLBAR_SendNotify (NMHDR *nmhdr, const TOOLBAR_INFO *infoPtr, UINT code)
{
 if(!IsWindow(infoPtr->hwndSelf))
     return 0;

    nmhdr->idFrom = GetDlgCtrlID (infoPtr->hwndSelf);
    nmhdr->hwndFrom = infoPtr->hwndSelf;
    nmhdr->code = code;

    TRACE("to window %p, code=%08x, %s\n", infoPtr->hwndNotify, code,
   (infoPtr->bUnicode) ? "via Unicode" : "via ANSI");

    return SendMessageW(infoPtr->hwndNotify, WM_NOTIFY, nmhdr->idFrom, (LPARAM)nmhdr);
}
