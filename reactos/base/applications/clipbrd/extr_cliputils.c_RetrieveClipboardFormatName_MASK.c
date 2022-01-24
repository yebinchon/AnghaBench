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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
typedef  scalar_t__ PVOID ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HINSTANCE ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int CF_OWNERDISPLAY ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STRING_CF_UNKNOWN ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_ASKCBFORMATNAME ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 

void
FUNC7(HINSTANCE hInstance,
                            UINT uFormat,
                            BOOL Unicode,
                            PVOID lpszFormat,
                            UINT cch)
{
    FUNC6(lpszFormat, cch * (Unicode ? sizeof(WCHAR) : sizeof(CHAR)));

    /* Check for predefined clipboard format */
    if (FUNC2(hInstance, uFormat, Unicode, lpszFormat, cch) != 0)
        return;

    /* Check for owner-display format */
    if (uFormat == CF_OWNERDISPLAY)
    {
        if (FUNC5(Unicode, WM_ASKCBFORMATNAME,
                                      (WPARAM)cch, (LPARAM)lpszFormat) != 0)
        {
            if (Unicode)
                FUNC4(hInstance, STRING_CF_UNKNOWN, (LPWSTR)lpszFormat, cch);
            else
                FUNC3(hInstance, STRING_CF_UNKNOWN, (LPSTR)lpszFormat, cch);
        }
        return;
    }

    /* Fallback to registered clipboard format */
    if (Unicode)
    {
        if (!FUNC1(uFormat, (LPWSTR)lpszFormat, cch))
            FUNC4(hInstance, STRING_CF_UNKNOWN, (LPWSTR)lpszFormat, cch);
    }
    else
    {
        if (!FUNC0(uFormat, (LPSTR)lpszFormat, cch))
            FUNC3(hInstance, STRING_CF_UNKNOWN, (LPSTR)lpszFormat, cch);
    }
}