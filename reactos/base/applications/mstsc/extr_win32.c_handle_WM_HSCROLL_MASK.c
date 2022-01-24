#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int SB_BOTTOM ; 
 int /*<<< orphan*/  SB_HORZ ; 
 int SB_LINELEFT ; 
 int SB_LINERIGHT ; 
 int SB_PAGELEFT ; 
 int SB_PAGERIGHT ; 
 int SB_THUMBPOSITION ; 
 int SB_TOP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  g_Wnd ; 
 int g_width ; 
 int g_wnd_cwidth ; 
 int g_xscroll ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT
FUNC6(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
  int code;
  int oldxscroll;

  code = (int) FUNC1(wParam); /* scroll bar value */
  if (code == SB_LINELEFT)
  {
    oldxscroll = g_xscroll;
    g_xscroll--;
    g_xscroll = FUNC3(g_xscroll, 0);
    FUNC2(g_Wnd, SB_HORZ, g_xscroll, 1);
    FUNC5(oldxscroll - g_xscroll, 0);
  }
  else if (code == SB_LINERIGHT)
  {
    oldxscroll = g_xscroll;
    g_xscroll++;
    g_xscroll = FUNC4(g_xscroll, g_width - g_wnd_cwidth);
    FUNC2(g_Wnd, SB_HORZ, g_xscroll, 1);
    FUNC5(oldxscroll - g_xscroll, 0);
  }
  else if (code == SB_PAGELEFT)
  {
    oldxscroll = g_xscroll;
    g_xscroll -= g_wnd_cwidth / 2;
    g_xscroll = FUNC3(g_xscroll, 0);
    FUNC2(g_Wnd, SB_HORZ, g_xscroll, 1);
    FUNC5(oldxscroll - g_xscroll, 0);
  }
  else if (code == SB_PAGERIGHT)
  {
    oldxscroll = g_xscroll;
    g_xscroll += g_wnd_cwidth / 2;
    g_xscroll = FUNC4(g_xscroll, g_width - g_wnd_cwidth);
    FUNC2(g_Wnd, SB_HORZ, g_xscroll, 1);
    FUNC5(oldxscroll - g_xscroll, 0);
  }
  else if (code == SB_BOTTOM)
  {
    oldxscroll = g_xscroll;
    g_xscroll = g_width - g_wnd_cwidth;
    FUNC2(g_Wnd, SB_HORZ, g_xscroll, 1);
    FUNC5(oldxscroll - g_xscroll, 0);
  }
  else if (code == SB_TOP)
  {
    oldxscroll = g_xscroll;
    g_xscroll = 0;
    FUNC2(g_Wnd, SB_HORZ, g_xscroll, 1);
    FUNC5(oldxscroll - g_xscroll, 0);
  }
  else if (code == SB_THUMBPOSITION)
  {
    oldxscroll = g_xscroll;
    g_xscroll = (signed short) FUNC0(wParam);
    FUNC2(g_Wnd, SB_HORZ, g_xscroll, 1);
    FUNC5(oldxscroll - g_xscroll, 0);
  }
  return 0;
}