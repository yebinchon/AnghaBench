
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WPARAM ;
typedef int UINT ;
struct TYPE_10__ {short x; short y; } ;
struct TYPE_7__ {int idFrom; int code; int hwndFrom; } ;
struct TYPE_9__ {int dwHitInfo; TYPE_1__ hdr; scalar_t__ dwItemData; TYPE_6__ pt; int dwItemSpec; } ;
struct TYPE_8__ {int Self; int Notify; } ;
typedef TYPE_2__ STATUS_INFO ;
typedef TYPE_3__ NMMOUSE ;
typedef int LRESULT ;
typedef int LPARAM ;


 int DefWindowProcW (int ,int ,int ,int ) ;
 int GWLP_ID ;
 int GetWindowLongPtrW (int ,int ) ;
 scalar_t__ HIWORD (int ) ;
 scalar_t__ LOWORD (int ) ;
 int STATUSBAR_InternalHitTest (TYPE_2__ const*,TYPE_6__*) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,int ,int ) ;
 int WM_NOTIFY ;

__attribute__((used)) static LRESULT
STATUSBAR_SendMouseNotify(const STATUS_INFO *infoPtr, UINT code, UINT msg, WPARAM wParam, LPARAM lParam)
{
    NMMOUSE nm;

    TRACE("code %04x, lParam=%lx\n", code, lParam);
    nm.hdr.hwndFrom = infoPtr->Self;
    nm.hdr.idFrom = GetWindowLongPtrW(infoPtr->Self, GWLP_ID);
    nm.hdr.code = code;
    nm.pt.x = (short)LOWORD(lParam);
    nm.pt.y = (short)HIWORD(lParam);
    nm.dwItemSpec = STATUSBAR_InternalHitTest(infoPtr, &nm.pt);
    nm.dwItemData = 0;
    nm.dwHitInfo = 0x30000;


    if(!SendMessageW(infoPtr->Notify, WM_NOTIFY, nm.hdr.idFrom, (LPARAM)&nm))
    {
      return DefWindowProcW(infoPtr->Self, msg, wParam, lParam);
    }
    return 0;
}
