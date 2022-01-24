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
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HMODULE ;
typedef  int /*<<< orphan*/  (* ETDTProc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ETDT_ENABLETAB ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

BOOL FUNC4(HWND hwnd)
{
    HMODULE hUXTheme;
    ETDTProc fnEnableThemeDialogTexture;

    hUXTheme = FUNC2(FUNC3("uxtheme.dll"));

    if(hUXTheme)
    {
        fnEnableThemeDialogTexture = 
            (ETDTProc)FUNC1(hUXTheme, "EnableThemeDialogTexture");

        if(fnEnableThemeDialogTexture)
        {
            fnEnableThemeDialogTexture(hwnd, ETDT_ENABLETAB);

            FUNC0(hUXTheme);
            return TRUE;
        }
        else
        {
            // Failed to locate API!
            FUNC0(hUXTheme);
            return FALSE;
        }
    }
    else
    {
        // Not running under XP? Just fail gracefully
        return FALSE;
    }
}