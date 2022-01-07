
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WPARAM ;
typedef int UINT ;
struct TYPE_5__ {short x; short y; } ;
struct TYPE_7__ {TYPE_1__ pt; int time; int lParam; int wParam; int message; int hwnd; } ;
struct TYPE_6__ {int hwndToolTip; int Self; } ;
typedef TYPE_2__ STATUS_INFO ;
typedef TYPE_3__ MSG ;
typedef int LRESULT ;
typedef int LPARAM ;


 int GetMessagePos () ;
 int GetMessageTime () ;
 scalar_t__ HIWORD (int ) ;
 scalar_t__ LOWORD (int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TTM_RELAYEVENT ;

__attribute__((used)) static LRESULT
STATUSBAR_Relay2Tip (const STATUS_INFO *infoPtr, UINT uMsg,
       WPARAM wParam, LPARAM lParam)
{
    MSG msg;

    msg.hwnd = infoPtr->Self;
    msg.message = uMsg;
    msg.wParam = wParam;
    msg.lParam = lParam;
    msg.time = GetMessageTime ();
    msg.pt.x = (short)LOWORD(GetMessagePos ());
    msg.pt.y = (short)HIWORD(GetMessagePos ());

    return SendMessageW (infoPtr->hwndToolTip, TTM_RELAYEVENT, 0, (LPARAM)&msg);
}
