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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ID_VIEW_MENU ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int MF_BYCOMMAND ; 
 int MF_CHECKED ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hMenuFrame ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(HWND hWnd, UINT cmd, HWND hchild)
{
    BOOL vis = FUNC2(hchild);
    HMENU hMenuView = FUNC1(hMenuFrame, ID_VIEW_MENU);

    FUNC0(hMenuView, cmd, vis?MF_BYCOMMAND:MF_BYCOMMAND|MF_CHECKED);
    FUNC3(hchild, vis?SW_HIDE:SW_SHOW);
    FUNC4(hWnd);
}