
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
 int SB_LINELEFT ;
 int SB_LINERIGHT ;
 int SB_PAGELEFT ;
 int SB_PAGERIGHT ;
 int SB_THUMBPOSITION ;
 int SB_TOP ;
 int SB_VERT ;
 int SetScrollPos (int ,int ,int,int) ;
 int UI_MAX (int,int ) ;
 int UI_MIN (int,int) ;
 int g_Wnd ;
 int g_height ;
 int g_wnd_cheight ;
 int g_yscroll ;
 int mi_scroll (int ,int) ;

__attribute__((used)) static LRESULT
handle_WM_VSCROLL(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
  int code;
  int oldyscroll;

  code = (int) LOWORD(wParam);
  if (code == SB_LINELEFT)
  {
    oldyscroll = g_yscroll;
    g_yscroll--;
    g_yscroll = UI_MAX(g_yscroll, 0);
    SetScrollPos(g_Wnd, SB_VERT, g_yscroll, 1);
    mi_scroll(0, oldyscroll - g_yscroll);
  }
  else if (code == SB_LINERIGHT)
  {
    oldyscroll = g_yscroll;
    g_yscroll++;
    g_yscroll = UI_MIN(g_yscroll, g_height - g_wnd_cheight);
    SetScrollPos(g_Wnd, SB_VERT, g_yscroll, 1);
    mi_scroll(0, oldyscroll - g_yscroll);
  }
  else if (code == SB_PAGELEFT)
  {
    oldyscroll = g_yscroll;
    g_yscroll -= g_wnd_cheight / 2;
    g_yscroll = UI_MAX(g_yscroll, 0);
    SetScrollPos(g_Wnd, SB_VERT, g_yscroll, 1);
    mi_scroll(0, oldyscroll - g_yscroll);
  }
  else if (code == SB_PAGERIGHT)
  {
    oldyscroll = g_yscroll;
    g_yscroll += g_wnd_cheight / 2;
    g_yscroll = UI_MIN(g_yscroll, g_height - g_wnd_cheight);
    SetScrollPos(g_Wnd, SB_VERT, g_yscroll, 1);
    mi_scroll(0, oldyscroll - g_yscroll);
  }
  else if (code == SB_BOTTOM)
  {
    oldyscroll = g_yscroll;
    g_yscroll = g_height - g_wnd_cheight;
    SetScrollPos(g_Wnd, SB_VERT, g_yscroll, 1);
    mi_scroll(0, oldyscroll - g_yscroll);
  }
  else if (code == SB_TOP)
  {
    oldyscroll = g_yscroll;
    g_yscroll = 0;
    SetScrollPos(g_Wnd, SB_VERT, g_yscroll, 1);
    mi_scroll(0, oldyscroll - g_yscroll);
  }
  else if (code == SB_THUMBPOSITION)
  {
    oldyscroll = g_yscroll;
    g_yscroll = (signed short) HIWORD(wParam);
    SetScrollPos(g_Wnd, SB_VERT, g_yscroll, 1);
    mi_scroll(0, oldyscroll - g_yscroll);
  }
  return 0;
}
