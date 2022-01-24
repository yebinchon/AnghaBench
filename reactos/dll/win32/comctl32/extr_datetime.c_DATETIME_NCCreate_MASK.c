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
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  CREATESTRUCTW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GWL_EXSTYLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_NCCREATE ; 
 int /*<<< orphan*/  WS_EX_CLIENTEDGE ; 

__attribute__((used)) static LRESULT
FUNC3 (HWND hwnd, const CREATESTRUCTW *lpcs)
{
    DWORD dwExStyle = FUNC1(hwnd, GWL_EXSTYLE);
    /* force control to have client edge */
    dwExStyle |= WS_EX_CLIENTEDGE;
    FUNC2(hwnd, GWL_EXSTYLE, dwExStyle);

    return FUNC0(hwnd, WM_NCCREATE, 0, (LPARAM)lpcs);
}