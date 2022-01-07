
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {int idFrom; int code; int hwndFrom; } ;
struct TYPE_7__ {int hwndNotify; int hwnd; } ;
typedef TYPE_1__ TREEVIEW_INFO ;
typedef TYPE_2__ NMHDR ;
typedef int LPARAM ;
typedef int BOOL ;


 int GWLP_ID ;
 int GetWindowLongPtrW (int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,int ,TYPE_2__*) ;
 int WM_NOTIFY ;
 int get_notifycode (TYPE_1__ const*,int ) ;

__attribute__((used)) static inline BOOL
TREEVIEW_SendRealNotify(const TREEVIEW_INFO *infoPtr, UINT code, NMHDR *hdr)
{
    TRACE("code=%d, hdr=%p\n", code, hdr);

    hdr->hwndFrom = infoPtr->hwnd;
    hdr->idFrom = GetWindowLongPtrW(infoPtr->hwnd, GWLP_ID);
    hdr->code = get_notifycode(infoPtr, code);

    return SendMessageW(infoPtr->hwndNotify, WM_NOTIFY, hdr->idFrom, (LPARAM)hdr);
}
