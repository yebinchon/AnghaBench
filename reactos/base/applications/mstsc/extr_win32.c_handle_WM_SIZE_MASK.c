#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WPARAM ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_2__ {scalar_t__ left; scalar_t__ top; scalar_t__ bottom; scalar_t__ right; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SB_HORZ ; 
 int /*<<< orphan*/  SB_VERT ; 
 scalar_t__ SIZE_MAXIMIZED ; 
 scalar_t__ SIZE_MINIMIZED ; 
 scalar_t__ SIZE_RESTORED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  g_Wnd ; 
 scalar_t__ g_height ; 
 scalar_t__ g_width ; 
 scalar_t__ g_wnd_cheight ; 
 TYPE_1__ g_wnd_clip ; 
 scalar_t__ g_wnd_cwidth ; 
 int g_xscroll ; 
 int g_yscroll ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static LRESULT
FUNC7(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
  int oldxscroll;
  int oldyscroll;

  if (wParam == SIZE_MINIMIZED)
  {
    return FUNC0(hWnd, message, wParam, lParam);
  }
  g_wnd_cwidth = FUNC2(lParam); /* client width / height */
  g_wnd_cheight = FUNC1(lParam);
  g_wnd_clip.left = 0;
  g_wnd_clip.top = 0;
  g_wnd_clip.right = g_wnd_clip.left + g_wnd_cwidth;
  g_wnd_clip.bottom = g_wnd_clip.top + g_wnd_cheight;
  if (g_wnd_cwidth < g_width || g_wnd_cheight < g_height)
  {
    FUNC3(g_Wnd, SB_HORZ, 0, g_width - g_wnd_cwidth, 1);
    FUNC3(g_Wnd, SB_VERT, 0, g_height - g_wnd_cheight, 1);
  }
  oldxscroll = g_xscroll;
  oldyscroll = g_yscroll;
  if (g_wnd_cwidth >= g_width)
  {
    g_xscroll = 0;
  }
  else
  {
    g_xscroll = FUNC4(g_xscroll, g_width - g_wnd_cwidth);
  }
  if (g_wnd_cheight >= g_height)
  {
    g_yscroll = 0;
  }
  else
  {
    g_yscroll = FUNC4(g_yscroll, g_height - g_wnd_cheight);
  }
  FUNC6(oldxscroll - g_xscroll, oldyscroll - g_yscroll);
  if (wParam == SIZE_RESTORED || wParam == SIZE_MAXIMIZED)
  {
    /* check the caps, num, and scroll lock here */
    FUNC5();
  }
  return 0;
}