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
 int SB_LINELEFT ; 
 int SB_LINERIGHT ; 
 int SB_PAGELEFT ; 
 int SB_PAGERIGHT ; 
 int SB_THUMBPOSITION ; 
 int SB_TOP ; 
 int /*<<< orphan*/  SB_VERT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  g_Wnd ; 
 int g_height ; 
 int g_wnd_cheight ; 
 int g_yscroll ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static LRESULT
FUNC6(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
  int code;
  int oldyscroll;

  code = (int) FUNC1(wParam); /* scroll bar value */
  if (code == SB_LINELEFT)
  {
    oldyscroll = g_yscroll;
    g_yscroll--;
    g_yscroll = FUNC3(g_yscroll, 0);
    FUNC2(g_Wnd, SB_VERT, g_yscroll, 1);
    FUNC5(0, oldyscroll - g_yscroll);
  }
  else if (code == SB_LINERIGHT)
  {
    oldyscroll = g_yscroll;
    g_yscroll++;
    g_yscroll = FUNC4(g_yscroll, g_height - g_wnd_cheight);
    FUNC2(g_Wnd, SB_VERT, g_yscroll, 1);
    FUNC5(0, oldyscroll - g_yscroll);
  }
  else if (code == SB_PAGELEFT)
  {
    oldyscroll = g_yscroll;
    g_yscroll -= g_wnd_cheight / 2;
    g_yscroll = FUNC3(g_yscroll, 0);
    FUNC2(g_Wnd, SB_VERT, g_yscroll, 1);
    FUNC5(0, oldyscroll - g_yscroll);
  }
  else if (code == SB_PAGERIGHT)
  {
    oldyscroll = g_yscroll;
    g_yscroll += g_wnd_cheight / 2;
    g_yscroll = FUNC4(g_yscroll, g_height - g_wnd_cheight);
    FUNC2(g_Wnd, SB_VERT, g_yscroll, 1);
    FUNC5(0, oldyscroll - g_yscroll);
  }
  else if (code == SB_BOTTOM)
  {
    oldyscroll = g_yscroll;
    g_yscroll = g_height - g_wnd_cheight;
    FUNC2(g_Wnd, SB_VERT, g_yscroll, 1);
    FUNC5(0, oldyscroll - g_yscroll);
  }
  else if (code == SB_TOP)
  {
    oldyscroll = g_yscroll;
    g_yscroll = 0;
    FUNC2(g_Wnd, SB_VERT, g_yscroll, 1);
    FUNC5(0, oldyscroll - g_yscroll);
  }
  else if (code == SB_THUMBPOSITION)
  {
    oldyscroll = g_yscroll;
    g_yscroll = (signed short) FUNC0(wParam);
    FUNC2(g_Wnd, SB_VERT, g_yscroll, 1);
    FUNC5(0, oldyscroll - g_yscroll);
  }
  return 0;
}