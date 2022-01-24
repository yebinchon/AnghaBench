#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int length; scalar_t__ showCmd; int /*<<< orphan*/  rcNormalPosition; } ;
typedef  TYPE_1__ WINDOWPLACEMENT ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  REG_BINARY ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ SW_SHOWMAXIMIZED ; 
 int /*<<< orphan*/  key_options ; 
 int /*<<< orphan*/  key_settings ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  var_framerect ; 
 int /*<<< orphan*/  var_maximized ; 

void FUNC6(HWND hMainWnd)
{
    HKEY hKey = 0;
    DWORD action;

    if(FUNC3(&hKey, &action, key_options) == ERROR_SUCCESS)
    {
        WINDOWPLACEMENT wp;
        DWORD isMaximized;

        wp.length = sizeof(WINDOWPLACEMENT);
        FUNC0(hMainWnd, &wp);
        isMaximized = (wp.showCmd == SW_SHOWMAXIMIZED);

        FUNC2(hKey, var_framerect, 0, REG_BINARY, (LPBYTE)&wp.rcNormalPosition, sizeof(RECT));
        FUNC2(hKey, var_maximized, 0, REG_DWORD, (LPBYTE)&isMaximized, sizeof(DWORD));

        FUNC4(hKey);
        FUNC1(hKey);
    }

    if(FUNC3(&hKey, &action, key_settings) == ERROR_SUCCESS)
    {
        FUNC5(hKey);
        FUNC1(hKey);
    }
}