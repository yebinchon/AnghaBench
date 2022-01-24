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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ID_DWL_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  hApplet ; 
 int /*<<< orphan*/  install_dialog ; 

__attribute__((used)) static void FUNC3(DWORD id)
{
    HWND status = FUNC0(install_dialog, ID_DWL_STATUS);
    WCHAR buf[64];

    FUNC1(hApplet, id, buf, sizeof(buf)/sizeof(WCHAR));
    FUNC2(status, WM_SETTEXT, 0, (LPARAM)buf);
}