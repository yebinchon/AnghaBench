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
 scalar_t__ g_mousex ; 
 scalar_t__ g_mousey ; 
 scalar_t__ g_xscroll ; 
 scalar_t__ g_yscroll ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT
FUNC3(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
  g_mousex = FUNC1(lParam);
  g_mousey = FUNC0(lParam);
  FUNC2(2, g_mousex + g_xscroll, g_mousey + g_yscroll, 0);
  return 0;
}