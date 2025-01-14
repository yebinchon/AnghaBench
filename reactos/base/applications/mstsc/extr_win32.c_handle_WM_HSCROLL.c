
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
 int SB_BOTTOM ;
 int SB_HORZ ;
 int SB_LINELEFT ;
 int SB_LINERIGHT ;
 int SB_PAGELEFT ;
 int SB_PAGERIGHT ;
 int SB_THUMBPOSITION ;
 int SB_TOP ;
 int SetScrollPos (int ,int ,int,int) ;
 int UI_MAX (int,int ) ;
 int UI_MIN (int,int) ;
 int g_Wnd ;
 int g_width ;
 int g_wnd_cwidth ;
 int g_xscroll ;
 int mi_scroll (int,int ) ;

__attribute__((used)) static LRESULT
handle_WM_HSCROLL(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
  int code;
  int oldxscroll;

  code = (int) LOWORD(wParam);
  if (code == SB_LINELEFT)
  {
    oldxscroll = g_xscroll;
    g_xscroll--;
    g_xscroll = UI_MAX(g_xscroll, 0);
    SetScrollPos(g_Wnd, SB_HORZ, g_xscroll, 1);
    mi_scroll(oldxscroll - g_xscroll, 0);
  }
  else if (code == SB_LINERIGHT)
  {
    oldxscroll = g_xscroll;
    g_xscroll++;
    g_xscroll = UI_MIN(g_xscroll, g_width - g_wnd_cwidth);
    SetScrollPos(g_Wnd, SB_HORZ, g_xscroll, 1);
    mi_scroll(oldxscroll - g_xscroll, 0);
  }
  else if (code == SB_PAGELEFT)
  {
    oldxscroll = g_xscroll;
    g_xscroll -= g_wnd_cwidth / 2;
    g_xscroll = UI_MAX(g_xscroll, 0);
    SetScrollPos(g_Wnd, SB_HORZ, g_xscroll, 1);
    mi_scroll(oldxscroll - g_xscroll, 0);
  }
  else if (code == SB_PAGERIGHT)
  {
    oldxscroll = g_xscroll;
    g_xscroll += g_wnd_cwidth / 2;
    g_xscroll = UI_MIN(g_xscroll, g_width - g_wnd_cwidth);
    SetScrollPos(g_Wnd, SB_HORZ, g_xscroll, 1);
    mi_scroll(oldxscroll - g_xscroll, 0);
  }
  else if (code == SB_BOTTOM)
  {
    oldxscroll = g_xscroll;
    g_xscroll = g_width - g_wnd_cwidth;
    SetScrollPos(g_Wnd, SB_HORZ, g_xscroll, 1);
    mi_scroll(oldxscroll - g_xscroll, 0);
  }
  else if (code == SB_TOP)
  {
    oldxscroll = g_xscroll;
    g_xscroll = 0;
    SetScrollPos(g_Wnd, SB_HORZ, g_xscroll, 1);
    mi_scroll(oldxscroll - g_xscroll, 0);
  }
  else if (code == SB_THUMBPOSITION)
  {
    oldxscroll = g_xscroll;
    g_xscroll = (signed short) HIWORD(wParam);
    SetScrollPos(g_Wnd, SB_HORZ, g_xscroll, 1);
    mi_scroll(oldxscroll - g_xscroll, 0);
  }
  return 0;
}
