
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int code; int idFrom; int hwndFrom; } ;
struct TYPE_6__ {int nTrackTool; int hwndSelf; TYPE_1__* tools; } ;
struct TYPE_5__ {int uId; int hwnd; } ;
typedef TYPE_1__ TTTOOL_INFO ;
typedef TYPE_2__ TOOLTIPS_INFO ;
typedef TYPE_3__ NMHDR ;
typedef int LPARAM ;


 int HWND_TOP ;
 int SWP_HIDEWINDOW ;
 int SWP_NOACTIVATE ;
 int SWP_NOZORDER ;
 int SendMessageW (int ,int ,int ,int ) ;
 int SetWindowPos (int ,int ,int ,int ,int ,int ,int) ;
 int TRACE (char*,int) ;
 int TTN_POP ;
 int WM_NOTIFY ;

__attribute__((used)) static void
TOOLTIPS_TrackHide (const TOOLTIPS_INFO *infoPtr)
{
    TTTOOL_INFO *toolPtr;
    NMHDR hdr;

    TRACE("hide tracking tooltip %d\n", infoPtr->nTrackTool);

    if (infoPtr->nTrackTool == -1)
 return;

    toolPtr = &infoPtr->tools[infoPtr->nTrackTool];

    hdr.hwndFrom = infoPtr->hwndSelf;
    hdr.idFrom = toolPtr->uId;
    hdr.code = TTN_POP;
    SendMessageW (toolPtr->hwnd, WM_NOTIFY, toolPtr->uId, (LPARAM)&hdr);

    SetWindowPos (infoPtr->hwndSelf, HWND_TOP, 0, 0, 0, 0,
      SWP_NOZORDER | SWP_HIDEWINDOW | SWP_NOACTIVATE);
}
