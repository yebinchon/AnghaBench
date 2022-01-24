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
typedef  int /*<<< orphan*/  szTempMessage ;
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  MCIERROR ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  IDS_DEFAULTMCIERRMSG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAX_MCISTR ; 
 int MB_ICONEXCLAMATION ; 
 int MB_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  hInstance ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szAppTitle ; 

__attribute__((used)) static VOID
FUNC6(HWND hwnd, MCIERROR mciError)
{
    TCHAR szErrorMessage[MAX_MCISTR];
    TCHAR szTempMessage[MAX_MCISTR + 44];

    if (FUNC5(mciError, szErrorMessage, FUNC0(szErrorMessage)) == FALSE)
    {
        FUNC1(hInstance, IDS_DEFAULTMCIERRMSG, szErrorMessage, FUNC0(szErrorMessage));
    }

    FUNC3(szTempMessage, sizeof(szTempMessage), FUNC4("MMSYS%lu: %s"), mciError, szErrorMessage);
    FUNC2(hwnd, szTempMessage, szAppTitle, MB_OK | MB_ICONEXCLAMATION);
}