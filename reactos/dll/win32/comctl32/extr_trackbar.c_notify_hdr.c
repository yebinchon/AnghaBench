
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int idFrom; int code; int hwndFrom; } ;
struct TYPE_5__ {int hwndNotify; int hwndSelf; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int LRESULT ;
typedef TYPE_2__* LPNMHDR ;
typedef int LPARAM ;
typedef int INT ;


 int GWLP_ID ;
 int GetWindowLongPtrW (int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,int ) ;
 int WM_NOTIFY ;

__attribute__((used)) static LRESULT notify_hdr (const TRACKBAR_INFO *infoPtr, INT code, LPNMHDR pnmh)
{
    LRESULT result;

    TRACE("(code=%d)\n", code);

    pnmh->hwndFrom = infoPtr->hwndSelf;
    pnmh->idFrom = GetWindowLongPtrW(infoPtr->hwndSelf, GWLP_ID);
    pnmh->code = code;
    result = SendMessageW(infoPtr->hwndNotify, WM_NOTIFY, pnmh->idFrom, (LPARAM)pnmh);

    TRACE("  <= %ld\n", result);

    return result;
}
