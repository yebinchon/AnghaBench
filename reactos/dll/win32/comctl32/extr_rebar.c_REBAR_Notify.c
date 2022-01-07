
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {int idFrom; int code; int hwndFrom; } ;
struct TYPE_6__ {scalar_t__ bUnicode; int hwndSelf; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef TYPE_2__ NMHDR ;
typedef int LPARAM ;
typedef int INT ;
typedef int HWND ;


 int GetDlgCtrlID (int ) ;
 int REBAR_GetNotifyParent (TYPE_1__ const*) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,int ,int ,char*) ;
 int WM_NOTIFY ;

__attribute__((used)) static INT
REBAR_Notify (NMHDR *nmhdr, const REBAR_INFO *infoPtr, UINT code)
{
    HWND parent;

    parent = REBAR_GetNotifyParent (infoPtr);
    nmhdr->idFrom = GetDlgCtrlID (infoPtr->hwndSelf);
    nmhdr->hwndFrom = infoPtr->hwndSelf;
    nmhdr->code = code;

    TRACE("window %p, code=%08x, via %s\n", parent, code, (infoPtr->bUnicode)?"Unicode":"ANSI");

    return SendMessageW(parent, WM_NOTIFY, nmhdr->idFrom, (LPARAM)nmhdr);
}
