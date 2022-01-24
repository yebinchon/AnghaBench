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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  COMDLG32_hInstance ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int MB_ICONWARNING ; 
 int MB_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  PD32_NO_DEVICES ; 
 int /*<<< orphan*/  PD32_PRINT_TITLE ; 
 int /*<<< orphan*/  PRINTER_ENUM_CONNECTIONS ; 
 int /*<<< orphan*/  PRINTER_ENUM_LOCAL ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT FUNC3(HWND hDlg)
{
    DWORD needed,num;
    WCHAR resourcestr[256],resultstr[256];

    FUNC0(PRINTER_ENUM_LOCAL, NULL, 2, NULL, 0, &needed, &num);
    if(needed == 0)
    {
          FUNC0(PRINTER_ENUM_CONNECTIONS, NULL, 2, NULL, 0, &needed, &num);
    }
    if(needed > 0)
          return TRUE;
    else
    {
          FUNC1(COMDLG32_hInstance, PD32_NO_DEVICES,resultstr, 255);
          FUNC1(COMDLG32_hInstance, PD32_PRINT_TITLE,resourcestr, 255);
          FUNC2(hDlg, resultstr, resourcestr,MB_OK | MB_ICONWARNING);
          return FALSE;
    }
}