
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int UINT ;
struct TYPE_3__ {short x; short y; } ;
struct TYPE_4__ {TYPE_1__ pt; int time; int lParam; int wParam; int message; int hwnd; } ;
typedef TYPE_2__ MSG ;
typedef int LPARAM ;
typedef int HWND ;


 int GetMessagePos () ;
 int GetMessageTime () ;
 scalar_t__ HIWORD (int ) ;
 scalar_t__ LOWORD (int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TTM_RELAYEVENT ;

__attribute__((used)) static void
TAB_RelayEvent (HWND hwndTip, HWND hwndMsg, UINT uMsg,
            WPARAM wParam, LPARAM lParam)
{
    MSG msg;

    msg.hwnd = hwndMsg;
    msg.message = uMsg;
    msg.wParam = wParam;
    msg.lParam = lParam;
    msg.time = GetMessageTime ();
    msg.pt.x = (short)LOWORD(GetMessagePos ());
    msg.pt.y = (short)HIWORD(GetMessagePos ());

    SendMessageW (hwndTip, TTM_RELAYEVENT, 0, (LPARAM)&msg);
}
