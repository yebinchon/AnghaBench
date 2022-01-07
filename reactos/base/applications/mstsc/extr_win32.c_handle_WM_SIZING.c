
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WPARAM ;
typedef int UINT ;
struct TYPE_2__ {int right; int left; int bottom; int top; } ;
typedef int LRESULT ;
typedef TYPE_1__* LPRECT ;
typedef scalar_t__ LPARAM ;
typedef int HWND ;


 int GWL_STYLE ;
 int GetWindowLongPtr (int ,int ) ;
 int SB_HORZ ;
 int SB_VERT ;
 int SetScrollPos (int ,int ,scalar_t__,int) ;
 int SetWindowLongPtr (int ,int ,int) ;
 int WS_HSCROLL ;
 int WS_VSCROLL ;
 int g_Wnd ;
 int g_height ;
 int g_width ;
 int g_xoff ;
 scalar_t__ g_xscroll ;
 int g_yoff ;
 scalar_t__ g_yscroll ;

__attribute__((used)) static LRESULT
handle_WM_SIZING(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
  LPRECT prect;
  int width;
  int height;
  int style;

  prect = (LPRECT) lParam;
  width = (prect->right - prect->left) - (g_xoff * 2);
  height = (prect->bottom - prect->top) - (g_yoff + g_xoff);
  if (height < g_height || width < g_width)
  {
    style = GetWindowLongPtr(g_Wnd, GWL_STYLE);
    if (!(style & WS_HSCROLL))
    {
      style |= WS_HSCROLL | WS_VSCROLL;
      SetWindowLongPtr(g_Wnd, GWL_STYLE, style);
      g_xscroll = 0;
      g_yscroll = 0;
      SetScrollPos(g_Wnd, SB_HORZ, g_xscroll, 1);
      SetScrollPos(g_Wnd, SB_VERT, g_yscroll, 1);
    }
  }
  else if (height >= g_height && width >= g_width)
  {
    style = GetWindowLongPtr(g_Wnd, GWL_STYLE);
    if (style & WS_HSCROLL)
    {
      style &= ~WS_HSCROLL;
      style &= ~WS_VSCROLL;
      SetWindowLongPtr(g_Wnd, GWL_STYLE, style);
      g_xscroll = 0;
      g_yscroll = 0;
    }
  }
  return 0;
}
