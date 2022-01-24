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
typedef  int /*<<< orphan*/  szTaskmgr ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HICON ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDI_TASKMANAGER ; 
 int /*<<< orphan*/  IDS_APP_TITLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hInst ; 
 int /*<<< orphan*/  hMainWnd ; 

void FUNC5(void)
{
    WCHAR szTaskmgr[128];
    HICON taskmgrIcon = FUNC1(hInst, FUNC3(IDI_TASKMANAGER));

    FUNC2(hInst, IDS_APP_TITLE, szTaskmgr, sizeof(szTaskmgr)/sizeof(WCHAR));
    FUNC4(hMainWnd, szTaskmgr, 0, taskmgrIcon);
    FUNC0(taskmgrIcon);
}