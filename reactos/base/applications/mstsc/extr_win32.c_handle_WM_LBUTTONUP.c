
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int UINT ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int HWND ;


 scalar_t__ HIWORD (int ) ;
 scalar_t__ LOWORD (int ) ;
 scalar_t__ g_mousex ;
 scalar_t__ g_mousey ;
 scalar_t__ g_xscroll ;
 scalar_t__ g_yscroll ;
 int ui_mouse_button (int,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static LRESULT
handle_WM_LBUTTONUP(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
  g_mousex = LOWORD(lParam);
  g_mousey = HIWORD(lParam);
  ui_mouse_button(1, g_mousex + g_xscroll, g_mousey + g_yscroll, 0);
  return 0;
}
