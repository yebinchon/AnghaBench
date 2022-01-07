
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nSplitPos; } ;
struct TYPE_4__ {int bottom; int right; } ;
typedef TYPE_1__ RECT ;
typedef int HWND ;


 int GetClientRect (int ,TYPE_1__*) ;
 int ReleaseCapture () ;
 int ResizeWnd (int ,int ) ;
 int draw_splitbar (int ,int) ;
 TYPE_2__* g_pChildWnd ;
 int last_split ;

__attribute__((used)) static void finish_splitbar(HWND hWnd, int x)
{
    RECT rt;

    draw_splitbar(hWnd, last_split);
    last_split = -1;
    GetClientRect(hWnd, &rt);
    g_pChildWnd->nSplitPos = x;
    ResizeWnd(rt.right, rt.bottom);
    ReleaseCapture();
}
