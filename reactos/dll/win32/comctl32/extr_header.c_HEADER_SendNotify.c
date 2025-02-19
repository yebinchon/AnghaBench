
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int hwndNotify; int hwndSelf; } ;
struct TYPE_5__ {int idFrom; int code; int hwndFrom; } ;
typedef TYPE_1__ NMHDR ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef TYPE_2__ HEADER_INFO ;


 int GWLP_ID ;
 int GetWindowLongPtrW (int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int WM_NOTIFY ;

__attribute__((used)) static LRESULT
HEADER_SendNotify(const HEADER_INFO *infoPtr, UINT code, NMHDR *nmhdr)
{
    nmhdr->hwndFrom = infoPtr->hwndSelf;
    nmhdr->idFrom = GetWindowLongPtrW (infoPtr->hwndSelf, GWLP_ID);
    nmhdr->code = code;

    return SendMessageW(infoPtr->hwndNotify, WM_NOTIFY,
       nmhdr->idFrom, (LPARAM)nmhdr);
}
