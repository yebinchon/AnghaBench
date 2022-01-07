
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
 int ui_mouse_button (int,int ,int ,int) ;

__attribute__((used)) static LRESULT
handle_WM_MOUSEWHEEL(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
  int delta;

  delta = ((signed short)HIWORD(wParam));
  if (delta > 0)
  {
    ui_mouse_button(4, 0, 0, 1);
    ui_mouse_button(4, 0, 0, 0);
  }
  else
  {
    ui_mouse_button(5, 0, 0, 1);
    ui_mouse_button(5, 0, 0, 0);
  }
  return 0;
}
