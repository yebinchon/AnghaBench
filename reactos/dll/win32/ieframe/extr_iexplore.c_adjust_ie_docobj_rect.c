
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ top; scalar_t__ bottom; } ;
typedef TYPE_1__ RECT ;
typedef int INT ;
typedef int HWND ;


 int GetClientRect (int ,TYPE_1__*) ;
 int GetDlgItem (int ,int ) ;
 int IDC_BROWSE_REBAR ;
 int IDC_BROWSE_STATUSBAR ;
 int InflateRect (TYPE_1__*,int ,int ) ;
 scalar_t__ IsWindowVisible (int ) ;
 int RB_GETBARHEIGHT ;
 int SendMessageW (int ,int ,int ,int ) ;

__attribute__((used)) static void adjust_ie_docobj_rect(HWND frame, RECT* rc)
{
    HWND hwndRebar = GetDlgItem(frame, IDC_BROWSE_REBAR);
    HWND hwndStatus = GetDlgItem(frame, IDC_BROWSE_STATUSBAR);
    INT barHeight = SendMessageW(hwndRebar, RB_GETBARHEIGHT, 0, 0);

    InflateRect(rc, 0, -barHeight);

    if(IsWindowVisible(hwndStatus))
    {
        RECT statusrc;

        GetClientRect(hwndStatus, &statusrc);
        rc->bottom -= statusrc.bottom - statusrc.top;
    }
}
