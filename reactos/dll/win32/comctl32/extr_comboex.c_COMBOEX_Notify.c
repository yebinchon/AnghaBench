
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int hwndNotify; scalar_t__ NtfUnicode; int hwndSelf; } ;
struct TYPE_5__ {int code; int hwndFrom; int idFrom; } ;
typedef TYPE_1__ NMHDR ;
typedef int LPARAM ;
typedef int INT ;
typedef TYPE_2__ COMBOEX_INFO ;


 int GetDlgCtrlID (int ) ;
 int SendMessageA (int ,int ,int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int WM_NOTIFY ;

__attribute__((used)) static INT COMBOEX_Notify (const COMBOEX_INFO *infoPtr, INT code, NMHDR *hdr)
{
    hdr->idFrom = GetDlgCtrlID (infoPtr->hwndSelf);
    hdr->hwndFrom = infoPtr->hwndSelf;
    hdr->code = code;
    if (infoPtr->NtfUnicode)
 return SendMessageW (infoPtr->hwndNotify, WM_NOTIFY, 0, (LPARAM)hdr);
    else
 return SendMessageA (infoPtr->hwndNotify, WM_NOTIFY, 0, (LPARAM)hdr);
}
