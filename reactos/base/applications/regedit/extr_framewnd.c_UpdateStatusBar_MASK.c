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
struct TYPE_2__ {int /*<<< orphan*/  hTreeWnd; } ;
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SB_SETTEXTW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* g_pChildWnd ; 
 int /*<<< orphan*/  hStatusBar ; 

void FUNC2(void)
{
    HKEY hKeyRoot;
    LPCWSTR pszKeyPath = FUNC0(g_pChildWnd->hTreeWnd, 0, &hKeyRoot);

    FUNC1(hStatusBar, SB_SETTEXTW, 0, (LPARAM)pszKeyPath);
}