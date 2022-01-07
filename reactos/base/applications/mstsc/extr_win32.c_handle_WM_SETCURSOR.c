
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WPARAM ;
typedef int UINT ;
struct TYPE_2__ {scalar_t__ left; scalar_t__ top; scalar_t__ right; scalar_t__ bottom; } ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int HWND ;


 int DefWindowProc (int ,int ,int ,int ) ;
 int SetCursor (int ) ;
 int g_cursor ;
 scalar_t__ g_mousex ;
 scalar_t__ g_mousey ;
 TYPE_1__ g_wnd_clip ;

__attribute__((used)) static LRESULT
handle_WM_SETCURSOR(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
  if (g_mousex >= g_wnd_clip.left &&
      g_mousey >= g_wnd_clip.top &&
      g_mousex < g_wnd_clip.right &&
      g_mousey < g_wnd_clip.bottom)
  {
    SetCursor(g_cursor);
  }

  return DefWindowProc(hWnd, message, wParam, lParam);
}
