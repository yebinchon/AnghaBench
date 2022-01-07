
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int hWnd; } ;
struct TYPE_7__ {int bottom; int right; int top; int left; } ;
struct TYPE_6__ {scalar_t__ top; scalar_t__ bottom; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__* PRECT ;
typedef int HWND ;


 int GetWindowRect (int ,TYPE_1__*) ;
 scalar_t__ IsWindowVisible (int ) ;
 int MoveWindow (int ,int ,int ,int ,int ,int ) ;
 int SetupStatusBar (int ,int ) ;
 int TRUE ;
 TYPE_4__* g_pChildWnd ;
 int hStatusBar ;

__attribute__((used)) static void resize_frame_rect(HWND hWnd, PRECT prect)
{
    RECT rt;
    if (IsWindowVisible(hStatusBar))
    {
        SetupStatusBar(hWnd, TRUE);
        GetWindowRect(hStatusBar, &rt);
        prect->bottom -= rt.bottom - rt.top;
    }
    MoveWindow(g_pChildWnd->hWnd, prect->left, prect->top, prect->right, prect->bottom, TRUE);
}
