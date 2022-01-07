
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int UINT ;
struct TYPE_3__ {int y; int x; } ;
typedef TYPE_1__ POINT ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int HWND ;


 int DefWindowProc (int ,int ,int ,int ) ;
 int HIWORD (int ) ;
 int LOWORD (int ) ;
 scalar_t__ ScreenToClient (int ,TYPE_1__*) ;
 int g_Wnd ;
 int g_mousex ;
 int g_mousey ;

__attribute__((used)) static LRESULT
handle_WM_NCHITTEST(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
  POINT pt;

  pt.x = LOWORD(lParam);
  pt.y = HIWORD(lParam);
  if (ScreenToClient(g_Wnd, &pt))
  {
    g_mousex = pt.x;
    g_mousey = pt.y;
  }
  return DefWindowProc(hWnd, message, wParam, lParam);
}
