
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ WPARAM ;
typedef int UINT ;
struct TYPE_2__ {scalar_t__ left; scalar_t__ top; scalar_t__ bottom; scalar_t__ right; } ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int HWND ;


 int DefWindowProc (int ,int ,scalar_t__,int ) ;
 scalar_t__ HIWORD (int ) ;
 scalar_t__ LOWORD (int ) ;
 int SB_HORZ ;
 int SB_VERT ;
 scalar_t__ SIZE_MAXIMIZED ;
 scalar_t__ SIZE_MINIMIZED ;
 scalar_t__ SIZE_RESTORED ;
 int SetScrollRange (int ,int ,int ,scalar_t__,int) ;
 int UI_MIN (int,scalar_t__) ;
 int g_Wnd ;
 scalar_t__ g_height ;
 scalar_t__ g_width ;
 scalar_t__ g_wnd_cheight ;
 TYPE_1__ g_wnd_clip ;
 scalar_t__ g_wnd_cwidth ;
 int g_xscroll ;
 int g_yscroll ;
 int mi_check_modifier () ;
 int mi_scroll (int,int) ;

__attribute__((used)) static LRESULT
handle_WM_SIZE(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
  int oldxscroll;
  int oldyscroll;

  if (wParam == SIZE_MINIMIZED)
  {
    return DefWindowProc(hWnd, message, wParam, lParam);
  }
  g_wnd_cwidth = LOWORD(lParam);
  g_wnd_cheight = HIWORD(lParam);
  g_wnd_clip.left = 0;
  g_wnd_clip.top = 0;
  g_wnd_clip.right = g_wnd_clip.left + g_wnd_cwidth;
  g_wnd_clip.bottom = g_wnd_clip.top + g_wnd_cheight;
  if (g_wnd_cwidth < g_width || g_wnd_cheight < g_height)
  {
    SetScrollRange(g_Wnd, SB_HORZ, 0, g_width - g_wnd_cwidth, 1);
    SetScrollRange(g_Wnd, SB_VERT, 0, g_height - g_wnd_cheight, 1);
  }
  oldxscroll = g_xscroll;
  oldyscroll = g_yscroll;
  if (g_wnd_cwidth >= g_width)
  {
    g_xscroll = 0;
  }
  else
  {
    g_xscroll = UI_MIN(g_xscroll, g_width - g_wnd_cwidth);
  }
  if (g_wnd_cheight >= g_height)
  {
    g_yscroll = 0;
  }
  else
  {
    g_yscroll = UI_MIN(g_yscroll, g_height - g_wnd_cheight);
  }
  mi_scroll(oldxscroll - g_xscroll, oldyscroll - g_yscroll);
  if (wParam == SIZE_RESTORED || wParam == SIZE_MAXIMIZED)
  {

    mi_check_modifier();
  }
  return 0;
}
